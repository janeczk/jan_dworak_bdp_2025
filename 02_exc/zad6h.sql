SELECT 
    ST_Area(
        ST_SymDifference(
            b.geometry, 
            ST_GeomFromEWKT('SRID=0;POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))')
        )
    ) AS non_common_area
FROM buildings b
WHERE b.name = 'BuildingC';






