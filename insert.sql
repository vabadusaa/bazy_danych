SET DATESTYLE TO 'European,German';


INSERT INTO agencja (id, nazwa, email, adres)  VALUES (1, 'thebestMUSIC', 'music.best@interia.pl', 'ul. Biernacka 138, 04-927 Warszawa');
INSERT INTO agencja (id, nazwa, email, adres)  VALUES (2, 'topCONCERT', 'topsconcert@gmail.com', 'ul. Orla 27, 11-041 Olsztyn');

INSERT INTO wykonawca (id, data_urodzenia, imie, nazwisko, pseudonim, agencja_id) VALUES (1, '1999-04-03', 'Mike', 'Heinrich' ,'monkeY', 1);
INSERT INTO wykonawca (id, data_urodzenia, imie, nazwisko, pseudonim, agencja_id) VALUES (2, '1985-11-05', NULL, 'Dennis','bestgirl', 1);
INSERT INTO wykonawca (id, data_urodzenia, imie, nazwisko, pseudonim, agencja_id) VALUES (3, '2000-07-23', 'Aimee', 'Chambers','Alexa', 1);
INSERT INTO wykonawca (id, data_urodzenia, imie, nazwisko, pseudonim, agencja_id) VALUES (4, '1995-03-18', NULL, 'Brown' ,'Spike', 2);
INSERT INTO wykonawca (id, data_urodzenia, imie, nazwisko, pseudonim, agencja_id) VALUES (5, '2001-03-16', 'Callum', 'Owen','Redguy', 2);
INSERT INTO wykonawca (id, data_urodzenia, imie, nazwisko, pseudonim, agencja_id) VALUES (6, '1991-03-16', 'Joy', 'Zuck','Jguy', null);


INSERT INTO koncert (id, data_koncertu, czas, miejsce, cena_koncertu) VALUES (1, '2019-07-04', '20:00:00', 'Gdańsk', '119.99');
INSERT INTO koncert (id, data_koncertu, czas, miejsce, cena_koncertu) VALUES (2, '2019-06-25', '19:00:00', 'Warszawa', '209.99');
INSERT INTO koncert (id, data_koncertu, czas, miejsce, cena_koncertu) VALUES (3, '2019-12-05', '21:00:00', 'Poznań', '79.99');
INSERT INTO koncert (id, data_koncertu, czas, miejsce, cena_koncertu) VALUES (4, '2019-10-13', '20:30:00', 'Słupsk', '159.99');
INSERT INTO koncert (id, data_koncertu, czas, miejsce, cena_koncertu) VALUES (5, '2019-08-22', '19:45:00', 'Sopot', '59.99');

INSERT INTO klient (id, data_urodzenia, imie, nazwisko, email) VALUES (1, NULL, 'Jan', 'Król', 'krol123@gmail.com');
INSERT INTO klient (id, data_urodzenia, imie, nazwisko, email) VALUES (2, '1992-11-22', 'Ola', 'Szpakowska', 'szpakiscool@gmail.com');
INSERT INTO klient (id, data_urodzenia, imie, nazwisko, email) VALUES (3, '1995-07-04', 'Zygmunt', 'Krajewski', 'krajo345@interia.pl');
INSERT INTO klient (id, data_urodzenia, imie, nazwisko, email) VALUES (4, NULL, 'Kasia', 'Kowalski', 'kasiula@onet.pl');
INSERT INTO klient (id, data_urodzenia, imie, nazwisko, email) VALUES (5, NULL, 'Patryk', 'Nowak', 'nocnocy@interia.pl');
INSERT INTO klient (id, data_urodzenia, imie, nazwisko, email) VALUES (6, '2000-03-12', 'Kornelia', 'Kozik', 'nozkozik@wp.pl');
INSERT INTO klient (id, data_urodzenia, imie, nazwisko, email) VALUES (7, '1999-05-04', 'Michał', 'Kazimierczak', 'michas123@gmail.com');
INSERT INTO klient (id, data_urodzenia, imie, nazwisko, email) VALUES (8, '1994-07-24', NULL, 'Sobczak', 'oskidoski@gmail.com');


INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (1, 2, 1, 2);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (16, 1, 1, 3);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (2, 2, 1, 7);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (17, 1, 1, 4);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (3, 2, 1, 5);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (4, 1, 2, 1);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (18, 2, 2, 5);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (5, 1, 2, 6);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (6, 1, 2, 2);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (7, 1, 3, 6);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (19, 2, 3, 7);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (8, 1, 3, 4);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (9, 1, 3, 2);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (10, 2, 4, 3);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (20, 1, 4, 1);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (11, 2, 4, 6);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (12, 2, 4, 4);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (13, 1, 5, 3);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (14, 1, 5, 1);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (15, 1, 5, 7);
INSERT INTO bilet (id, agencja_id, koncert_id, klient_id) VALUES (21, 2, 5, 6);



INSERT INTO wykonuje (koncert_id, wykonawca_id) VALUES (1,5);
INSERT INTO wykonuje (koncert_id, wykonawca_id) VALUES (1,3);
INSERT INTO wykonuje (koncert_id, wykonawca_id) VALUES (2,4);
INSERT INTO wykonuje (koncert_id, wykonawca_id) VALUES (3,3);
INSERT INTO wykonuje (koncert_id, wykonawca_id) VALUES (3,2);
INSERT INTO wykonuje (koncert_id, wykonawca_id) VALUES (4,2);
INSERT INTO wykonuje (koncert_id, wykonawca_id) VALUES (5,1);


--
-- Name: agencja_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('agencja_id_seq', 2, true);
--
-- Name: wykonawca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('wykonawca_id_seq', 6, true);
--
-- Name: koncert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('koncert_id_seq', 5, true);
--
-- Name: klient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('klient_id_seq', 7, true);
--
-- Name: bilet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('bilet_id_seq', 21, true);
--
-- PostgreSQL database dump complete
--
