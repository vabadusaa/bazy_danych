SET client_encoding='utf-8';

create table agencja
(
    id                          serial                       ,
    nazwa                       varchar(32)          NOT NULL,
    email                       varchar(64)          NOT NULL,
    adres                       varchar(64)                  ,
    CONSTRAINT                  agencja_id_pk PRIMARY KEY(id)
);

create table wykonawca
(
    id                          serial                       ,
    data_urodzenia              date                         ,
    imie                        varchar(20)                  ,
    nazwisko                    varchar(25)          NOT NULL,
    pseudonim                   varchar(15)          NOT NULL,
    agencja_id                  int                          ,
    CONSTRAINT                  wykonawca_id_pk PRIMARY KEY(id),
    CONSTRAINT                  agencja_id_fk FOREIGN KEY (agencja_id)
	                               REFERENCES agencja(id)
                                ON UPDATE CASCADE ON DELETE CASCADE
);

create table koncert
(
    id                          serial                       ,
    data_koncertu               date                 NOT NULL,
    czas TIMESTAMP not null,
    miejsce                     varchar(40)          NOT NULL,
    cena_koncertu               float                  NOT NULL,
    CONSTRAINT                  wystep_id_pk PRIMARY KEY(id)
);

create table klient
(
    id                          serial                       ,
    data_urodzenia              date                         ,
    imie                        varchar(20)                  ,
    nazwisko                    varchar(25)          NOT NULL,
    email                       varchar(32)          NOT NULL,
    CONSTRAINT                  klient_id_pk PRIMARY KEY(id),
    CONSTRAINT                  klient_email_un UNIQUE(email)
);

create table bilet
(
    id                          serial                       ,
    agencja_id                  int                  NOT NULL,
    koncert_id                  int                  NOT NULL,
    klient_id                   int                  NOT NULL,
    CONSTRAINT                  bilet_id_pk PRIMARY KEY(id),
    CONSTRAINT                  agencja_id_fk FOREIGN KEY(agencja_id)
					    REFERENCES agencja(id)
                                    ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT                  koncert_id_fk FOREIGN KEY(koncert_id)
				            REFERENCES koncert(id)
                                    ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT                   klient_id_fk FOREIGN KEY(klient_id)
					    REFERENCES klient(id)
                                    ON UPDATE CASCADE ON DELETE CASCADE
);

create table wykonuje
(
    koncert_id                 int                 NOT NULL,
    wykonawca_id               int                 NOT NULL,
    CONSTRAINT                 wykonuje_pk
                                   PRIMARY KEY(koncert_id, wykonawca_id),
    CONSTRAINT                  wykonuje_koncert_id_fk
                                   FOREIGN KEY(koncert_id)
                                   REFERENCES koncert(id)
                                   ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT                  wykonuje_wykonawca_id_fk
                                   FOREIGN KEY(wykonawca_id)
                                   REFERENCES wykonawca(id)
                                   ON UPDATE CASCADE ON DELETE CASCADE
);

-- drop table wykonuje;
-- drop table bilet;
-- drop table koncert;
-- drop table klient;
-- drop table bilet;
