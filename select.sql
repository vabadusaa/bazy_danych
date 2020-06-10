-- 1. usuwanie koncerty, ktore nie maja id
DELETE  FROM agencja_koncertowa
	WHERE email IS NULL;

-- 2. koncerty ktore odebda sie w sierpniu tego roku
SELECT * FROM koncert
	WHERE data_koncertu
	BETWEEN '2020/06/01' AND '2020/06/30';

-- 3. wyszukuje dane klientow zaczynajacych sie na litere K
-- i skladajacych sie z 5 liter
SELECT imie, nazwisko FROM klient
	WHERE imie LIKE 'K____';

-- 3. usuwa dane klientow zaczynajacych sie na litere K
-- i skladajacych sie z 5 liter
DELETE FROM klient
	WHERE imie LIKE 'K____';

-- 4. wyswietla cene kocertow od najnizszej dla wszystkich koncertow
SELECT DISTINCT cena_koncertu, id FROM koncert
	ORDER BY cena_koncertu ASC;

-- 5.agencje ktore nie sprzedaja biletow
SELECT nazwa from agencja
	WHERE nazwa not in(select nazwa from bilet);

  -- 6. klienci, który nie kupił biletów
SELECT imie, nazwisko FROM klient
  WHERE id NOT IN (
    SELECT klient_id FROM bilet
    )
      ORDER BY nazwisko;

-- 7.klienci którzy kupili więcej niż jeden bilet

SELECT * FROM bilet
	WHERE klient_id IN (SELECT klient_id FROM bilet
    GROUP BY klient_id HAVING count (klient_id) >1);

-- 8. calkowity koszt biletow
SELECT SUM(
	cena_koncertu * (
		SELECT count(1) FROM bilet
			WHERE bilet.koncert_id = koncert.id
	)
) FROM koncert;

-- 9. sredni koszt biletow
SELECT round(100*SUM(
	cena_koncertu * (
		SELECT count(1) FROM bilet
			WHERE bilet.koncert_id = koncert.id
	)
) / (
	SELECT count(1) FROM bilet
))/100 as avg
FROM koncert;

-- 10. klient który nie podał imienia
SELECT * FROM klient
	WHERE imie IS NULL;

-- 11. usuwanie koncertów na które nie są zakupione bilety
DELETE FROM koncert
  WHERE id IN
  (
    SELECT id FROM koncert
    WHERE id NOT IN (SELECT bilet.id FROM bilet)
  )
;

-- 12. wypisze  klientów o więcej niż jednym bilecie
SELECT imie, nazwisko,
(
	SELECT count(1) FROM bilet
	WHERE klient.id = bilet.klient_id
) AS "ile biletów"
FROM klient

-- 13.obniżenie ceny koncertu o 50%
UPDATE bilet set Cena = Cena - (Cena*50/100) where Id_klienta = 5;
