SELECT ST_Distance(b.geometry, p.geometry) AS min_distance
FROM buildings b
JOIN poi p ON p.name = 'K'
WHERE b.name = 'BuildingC';



