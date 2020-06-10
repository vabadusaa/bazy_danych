SET client_encoding='utf-8';

create table agencja_koncertowa(

    Id serial primary key,
    nazwa varchar(30) not null,
    email varchar(40),
    adres varchar(40) not null

);

create table wykonawca(

    Id serial primary key,
    imie varchar(20) not null,
    nazwisko varchar(20) not null,
    pseudonim varchar(30),
    data_urodzenia date not null,

    Id_agencji int references agencja_koncertowa(Id) not null

);

create table koncert(

    Id serial primary key,
    data_koncertu TIMESTAMP not null,
    nazwa varchar(60) not null,
    miejsce varchar(60) not null,
    czas TIMESTAMP not null,
    cena_koncertu float,

    Id_wykonawcy int references wykonawca(Id) not null

);

create table klient(

    Id serial primary key,
    data_urodzenia DATE not null,
    imie varchar(20) not null,
    nazwisko varchar(20) not null,
    email varchar(50) not null
    
);


create table bilet(

    Id serial primary key,
    Cena float,

    Id_koncert int references koncert(Id) not null,
    Id_agencji int references agencja_koncertowa(Id) not null,
    Id_klienta int references klient(Id) not null
);
create table wykonuje
(
    id_koncert                int                 NOT NULL,
    id_wykonawca               int                 NOT NULL,
    CONSTRAINT                 wykonuje_pk
                                   PRIMARY KEY(id_koncert, id_wykonawca),
    CONSTRAINT                  wykonuje_id_koncert_fk
                                   FOREIGN KEY(id_koncert)
                                   REFERENCES koncert(id)
                                   ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT                  wykonuje_id_wykonawca_fk
                                   FOREIGN KEY(id_wykonawca)
                                   REFERENCES wykonawca(id)
                                   ON UPDATE CASCADE ON DELETE CASCADE
);
