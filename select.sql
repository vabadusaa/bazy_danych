-- 1. usuwanie koncerty, ktore nie mają imion 
DELETE  FROM wykonawca
	WHERE imie  IS NULL;

-- 2. koncerty ktore odebda sie w grudniu 2019
SELECT * FROM koncert
	WHERE data_koncertu
	BETWEEN '2019-12-01' AND '2019-12-31';

-- 3. wyszukuje dane klientow zaczynajacych sie na litere K
-- i skladajacych sie z 5 liter
SELECT imie, nazwisko FROM klient
	WHERE imie LIKE 'K____';

-- 4. usuwa dane klientow zaczynajacych sie na litere K
-- i skladajacych sie z 5 liter
DELETE FROM klient
	WHERE imie LIKE 'K____';

-- 5. wyswietla cene kocertow od najnizszej dla wszystkich koncertow
SELECT DISTINCT cena_koncertu, id FROM koncert
	ORDER BY cena_koncertu ASC;

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


-- 11. ilość zakupionych biletów przez klientów
SELECT imie, nazwisko,
(
	SELECT count(1) FROM bilet
	WHERE klient.id = bilet.klient_id
) AS "ile biletów"
FROM klient;

-- 12. wykonawcy, którzy nie mają koncertów
SELECT imie, nazwisko FROM wykonawca
	WHERE NOT EXISTS(
	SELECT *
		FROM wykonuje INNER JOIN koncert
		ON  wykonawca.id=wykonuje.wykonawca_id  
		AND koncert.id=wykonuje.koncert_id 
		);

-- 13. zmodyfikuj by komunikował o braku imienia klienta
UPDATE klient SET imie = imie||'brak imienia'
	where imie IS NULL
	
	
