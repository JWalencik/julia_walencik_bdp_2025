WITH railway AS(
	SELECT ST_Union(geom) AS geom FROM karlsruhe.railway_2019),
water_lines AS(
	SELECT ST_Union(geom) AS geom FROM karlsruhe.water_lines_2019)

SELECT ST_Intersection(wt.geom, r.geom)
FROM water_lines wt, railway r