SELECT name, geometry, ST_Area(geometry) AS Area, ST_Perimeter(geometry) AS Perimeter
FROM public.buildings
WHERE name LIKE 'BuildingA'