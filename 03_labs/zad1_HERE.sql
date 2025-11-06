
SELECT DISTINCT b19.*
FROM buildings_2019 b19
LEFT JOIN buildings_2018 b18
    ON b19.polygon_id = b18.polygon_id
WHERE b18.polygon_id IS NULL
   OR NOT ST_Equals(b19.geom, b18.geom);




