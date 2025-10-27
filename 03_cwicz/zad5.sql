SELECT name, ST_Area(ST_Buffer(geometry, 5)) AS area
FROM public.obiekty
WHERE NOT ST_HasArc(geometry)