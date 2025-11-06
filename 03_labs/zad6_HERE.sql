-- Utworzenie tabeli z punktami ulic w układzie DHDN.Berlin/Cassini (EPSG:3068)
CREATE TABLE street_node_reprojected AS
SELECT 
    *,
    ST_Transform(geom, 3068) AS geom_3068
FROM t2019_kar_street_node;

-- Znalezienie skrzyżowań w odległości ≤ 200 m od linii łączącej punkty z input_points
WITH line AS (
    SELECT ST_MakeLine(geom ORDER BY id) AS geom
    FROM input_points
),
buffer AS (
    SELECT ST_Buffer(ST_Transform(geom, 3068), 200) AS geom
    FROM line
)
SELECT sn.*
FROM street_node_reprojected sn
JOIN buffer b
  ON ST_Intersects(sn.geom_3068, b.geom);
