WITH building_b AS(
	SELECT ST_Buffer(geometry, 0.5) AS geometry FROM public.buildings
	WHERE name LIKE 'BuildingB'
),
building_c AS(
	SELECT geometry FROM public.buildings
	WHERE name LIKE 'BuildingC'
)

SELECT ST_Area(ST_Difference(c.geometry, b.geometry)) AS Area
FROM building_c c, building_b b