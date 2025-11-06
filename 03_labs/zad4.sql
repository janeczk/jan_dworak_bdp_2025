INSERT INTO obiekty (nazwa, geom)
SELECT
    'obiekt7',
    ST_Union(a.geom, b.geom)
FROM obiekty a, obiekty b
WHERE a.nazwa = 'obiekt3'
  AND b.nazwa = 'obiekt4';
