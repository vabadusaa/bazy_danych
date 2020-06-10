SET DATESTYLE TO 'European,German';


INSERT INTO agencja_koncertowa (Id, nazwa, email, adres)  VALUES (1, 'thebestMUSIC', 'music.best@interia.pl', 'ul. Biernacka 138, 04-927 Warszawa');
INSERT INTO agencja_koncertowa (Id, nazwa, email, adres)  VALUES (2, 'topCONCERT', 'topsconcert@gmail.com', 'ul. Orla 27, 11-041 Olsztyn');


INSERT INTO wykonawca (Id, data_urodzenia, imie, nazwisko, pseudonim, Id_agencji) VALUES (1, '1999-04-03', 'Mike', 'Heinrich' ,'monkeY', 1);
INSERT INTO wykonawca (Id, data_urodzenia, imie, nazwisko, pseudonim, Id_agencji) VALUES (2, '1985-11-05', 'Ellie', 'Dennis','bestgirl', 1);
INSERT INTO wykonawca (Id, data_urodzenia, imie, nazwisko, pseudonim, Id_agencji) VALUES (3, '2000-07-23', 'Aimee', 'Chambers','Alexa', 1);
INSERT INTO wykonawca (Id, data_urodzenia, imie, nazwisko, pseudonim, Id_agencji) VALUES (4, '1995-03-18', 'Jade', 'Brown' ,'Spike', 2);
INSERT INTO wykonawca (Id, data_urodzenia, imie, nazwisko, pseudonim, Id_agencji) VALUES (5, '2001-03-16', 'Callum', 'Owen','Redguy', 2);


INSERT INTO koncert (Id, czas, miejsce, cena_koncertu) VALUES (1, '2019-07-04 20:00:00', 'Gdańsk', '119.99');
INSERT INTO koncert (Id, czas, miejsce, cena_koncertu) VALUES (2, '2019-06-25 19:00:00', 'Warszawa', '209.99');
INSERT INTO koncert (Id, czas, miejsce, cena_koncertu) VALUES (3, '2019-12-05 21:00:00', 'Poznań', '79.99');
INSERT INTO koncert (Id, czas, miejsce, cena_koncertu) VALUES (4, '2019-10-1320:30:00', 'Słupsk', '159.99');
INSERT INTO koncert (Id, czas, miejsce, cena_koncertu) VALUES (5, '2019-08-22 19:45:00', 'Sopot', '59.99');


INSERT INTO klient (Id, data_urodzenia, imie, nazwisko, email) VALUES (1, '1900-07-24', 'Jan', 'Król', 'krol123@gmail.com');
INSERT INTO klient (Id, data_urodzenia, imie, nazwisko, email) VALUES (2, '1992-11-22', 'Ola', 'Szpakowska', 'szpakiscool@gmail.com');
INSERT INTO klient (Id, data_urodzenia, imie, nazwisko, email) VALUES (3, '1995-01-14', 'Zygmunt', 'Krajewski', 'krajo345@interia.pl');
INSERT INTO klient (Id, data_urodzenia, imie, nazwisko, email) VALUES (4, '1995-07-04', 'Kasia', 'Kowalski', 'kasiula@onet.pl');
INSERT INTO klient (Id, data_urodzenia, imie, nazwisko, email) VALUES (5, '1993-03-04', 'Patryk', 'Nowak', 'nocnocy@interia.pl');
INSERT INTO klient (Id, data_urodzenia, imie, nazwisko, email) VALUES (6, '2000-03-12', 'Kornelia', 'Kozik', 'nozkozik@wp.pl');
INSERT INTO klient (Id, data_urodzenia, imie, nazwisko, email) VALUES (7, '1999-05-04', 'Michał', 'Kazimierczak', 'michas123@gmail.com');


INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (1, 2, 1, 2);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (2, 2, 1, 7);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (3, 2, 1, 5);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (4, 1, 2, 1);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (5, 1, 2, 6);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (6, 1, 2, 2);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (7, 1, 3, 6);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (8, 1, 3, 4);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (9, 1, 3, 2);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (10, 2, 4, 3);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (11, 2, 4, 6);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (12, 2, 4, 4);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (13, 1, 5, 3);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (14, 1, 5, 1);
INSERT INTO bilet (Id, Id_agencji, Id_koncert, Id_klienta) VALUES (15, 1, 5, 7);


INSERT INTO wykonuje (id_koncert, id_wykonawca) VALUES (1,5);
INSERT INTO wykonuje (id_koncert, id_wykonawca)  VALUES (2,4);
INSERT INTO wykonuje (id_koncert, id_wykonawca)  VALUES (3,3);
INSERT INTO wykonuje (id_koncert, id_wykonawca)  VALUES (4,2);
INSERT INTO wykonuje (id_koncert, id_wykonawca)  VALUES (5,1);


--
-- Name: agencja_koncertowa_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('agencja_koncertowa_Id_seq', 2, true);
--
-- Name: wykonawca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('wykonawca_Id_seq', 5, true);
--
-- Name: koncert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('koncert_Id_seq', 5, true);
--
-- Name: klient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('klient_Id_seq', 7, true);
--
-- Name: bilet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('bilet_Id_seq', 15, true);
--
-- PostgreSQL database dump complete
--
