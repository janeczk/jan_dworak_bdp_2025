--7. Policz jak wiele sklepów sportowych (‘Sporting Goods Store’ - tabela POIs) znajduje się
--w odległości 300 m od parków (LAND_USE_A).

SELECT COUNT(DISTINCT p.gid) AS liczba_sklepow_sportowych
FROM poi_2019 p
JOIN land_use_a l
  ON ST_DWithin(
        ST_Transform(p.geom, 3068),
        ST_Transform(l.geom, 3068),
        300
     )
WHERE p.type = 'Sporting Goods Store';
