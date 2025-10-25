SELECT name, Perimeter FROM(
SELECT name, ST_Perimeter(geometry) AS Perimeter, ST_Area(geometry) AS area
FROM public.buildings
ORDER BY Area DESC)
LIMIT 2