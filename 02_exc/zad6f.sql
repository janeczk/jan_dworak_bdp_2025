SELECT 
    ST_Area(
        ST_Difference(
            bC.geometry, 
            ST_Buffer(bB.geometry, 0.5)
        )
    ) AS area_farther_than_05
FROM buildings bC, buildings bB
WHERE bC.name = 'BuildingC' AND bB.name = 'BuildingB';




