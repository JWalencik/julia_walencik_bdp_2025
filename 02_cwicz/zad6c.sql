SELECT name, ST_Area(geometry) AS Area
FROM public.buildings
ORDER BY name