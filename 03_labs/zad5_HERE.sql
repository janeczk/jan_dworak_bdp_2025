-- zmiana układu współrzędnych punktów z WGS84 (EPSG:4326) 
-- na DHDN.Berlin/Cassini (EPSG:3068)

ALTER TABLE input_points
ALTER COLUMN geom TYPE geometry(Point, 3068)
USING ST_Transform(geom, 3068);

-- sprawdzenie wyniku
SELECT ST_AsText(geom), ST_SRID(geom)
FROM input_points;
