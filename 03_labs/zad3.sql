
INSERT INTO public.obiekty (nazwa, geom)
SELECT 
    'obiekt4_cl',
    ST_MakePolygon(
    	ST_AddPoint(
        	ST_LineMerge(geom),        
        	ST_StartPoint(ST_LineMerge(geom)))
    )
FROM obiekty 
WHERE nazwa = 'obiekt4';