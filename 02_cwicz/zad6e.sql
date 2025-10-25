SELECT b.name, p.name, ST_Distance(b.geometry, p.geometry) AS Distance
FROM public.buildings AS b, public.poi as p
WHERE b.name LIKE 'BuildingC' AND p.name LIKE 'K'