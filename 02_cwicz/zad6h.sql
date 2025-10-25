WITH poly AS(
	SELECT ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))') AS geometry
)

SELECT ST_Area(
	ST_Difference(
		ST_Union(b.geometry, p.geometry),
		ST_Intersection(b.geometry, p.geometry)
	))
FROM public.buildings b, poly p
WHERE b.name LIKE 'BuildingC'