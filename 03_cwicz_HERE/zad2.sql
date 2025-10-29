WITH new_build AS(
	SELECT b2019.*
	FROM karlsruhe.buildings_2019 b2019
	LEFT JOIN karlsruhe.buildings_2018 b2018
	ON b2019.polygon_id = b2018.polygon_id
	WHERE NOT ST_Equals(b2019.geom, b2018.geom) OR b2018.geom IS NULL),
new_poi AS(
	SELECT p2019.poi_id, p2019.type, p2019.geom
	FROM karlsruhe.poi_2019 p2019
	LEFT JOIN karlsruhe.poi_2018 p2018
	ON p2018.poi_id = p2019.poi_id
	WHERE p2018.geom IS NULL),
union_area AS(
	SELECT ST_Union(ST_Buffer(nb.geom::geography, 500)::geometry) AS Area
	FROM new_build nb)

SELECT np.type, COUNT(np.poi_id)
FROM new_poi np, union_area ua
WHERE ST_Intersects(np.geom, ua.area)
GROUP BY np.type