--sprawdzenie czy dobrze dane się załadowały
--SELECT COUNT(*) FROM public.poi_2018;
--SELECT COUNT(*) FROM public.poi_2019;

--2. Znajdź ile nowych POI pojawiło się w promieniu 500 m od wyremontowanych lub
--wybudowanych budynków, które znalezione zostały w zadaniu 1. Policz je wg ich kategorii.
SELECT DISTINCT p19.type,
       COUNT(*) AS liczba_poi
FROM poi_2019 p19
LEFT JOIN poi_2018 p18
  ON p19.poi_id = p18.poi_id
JOIN (
	--zapytanie z poprzedniego zadania
    SELECT DISTINCT b19.*
    FROM buildings_2019 b19
    LEFT JOIN buildings_2018 b18
      ON b19.polygon_id = b18.polygon_id
    WHERE b18.polygon_id IS NULL
       OR NOT ST_Equals(b19.geom, b18.geom)
) AS changed_buildings
  ON ST_DistanceSphere(p19.geom, changed_buildings.geom) <= 500 --znajduje wszystkie nowe POI, które leżą w odległości ≤ 500 m od budynku, który został wyremontowany lub nowo wybudowany
WHERE p18.poi_id IS NULL
GROUP BY p19.type
ORDER BY liczba_poi DESC;
