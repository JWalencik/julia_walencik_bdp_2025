WITH b_Cen_y AS(
	SELECT name, ST_Y(ST_Centroid(geometry)) AS Cen_y_b
	FROM public.buildings
),
r_Cen_y AS(
	SELECT ST_Y(ST_Centroid(geometry)) AS Cen_y_r
	FROM public.roads
	WHERE name LIKE 'RoadX')

SELECT name FROM r_Cen_y, b_Cen_y
WHERE Cen_y_b>Cen_y_r