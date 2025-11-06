--3. Utwórz nową tabelę o nazwie ‘streets_reprojected’, która zawierać będzie dane z tabeli
--T2019_KAR_STREETS przetransformowane do układu współrzędnych DHDN.Berlin/Cassini.

CREATE TABLE streets_reprojected AS
SELECT 
    gid,
    link_id,
    st_name,
    ref_in_id,
    nref_in_id,
    func_class,
    speed_cat,
    fr_speed_l,
    to_speed_l,
    dir_travel,
    ST_Transform(geom, 3068) AS geom -- przelicza wszystkie współrzędne X, Y do innego układu – EPSG:3068.
FROM t2019_kar_streets;
