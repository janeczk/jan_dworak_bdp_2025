SELECT DISTINCT p19.type,
       COUNT(*) AS liczba_poi
FROM t2019_kar_poi_table p19
LEFT JOIN t2018_kar_poi_table p18
  ON p19.poi_id = p18.poi_id
JOIN (
    SELECT DISTINCT b19.*
    FROM t2019_kar_buildings b19
    LEFT JOIN t2018_kar_buildings b18
      ON b19.polygon_id = b18.polygon_id
    WHERE b18.polygon_id IS NULL
       OR NOT ST_Equals(b19.geom, b18.geom)
) AS changed_buildings
  ON ST_Distance(p19.geom, changed_buildings.geom) <= 500
WHERE p18.poi_id IS NULL
GROUP BY p19.type
ORDER BY liczba_poi DESC;
