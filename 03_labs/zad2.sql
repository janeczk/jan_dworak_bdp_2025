SELECT
    ST_Area(
        ST_Buffer(
            ST_ShortestLine(a.geom, b.geom),
            5
        )
    ) AS pole_bufora
FROM obiekty a, obiekty b
WHERE a.nazwa = 'obiekt3'
  AND b.nazwa = 'obiekt4';
