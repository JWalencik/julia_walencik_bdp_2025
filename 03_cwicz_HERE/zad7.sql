WITH park_2019 AS(
	SELECT ST_Union(lua.geom) AS geom FROM karlsruhe.land_use_a_2019 lua
	WHERE lua.type LIKE '%Park%'),
park_2018 AS(
	SELECT ST_Union(lua.geom) AS geom FROM karlsruhe.land_use_a_2018 lua
	WHERE lua.type LIKE '%Park%'),
park AS(
	SELECT ST_Buffer(ST_Union(p19.geom, p18.geom)::geography, 300)::geometry AS geom
	FROM park_2019 p19, park_2018 p18)

SELECT poi.*
FROM karlsruhe.poi_2019 poi, park p
WHERE poi.type LIKE 'Sporting Goods Store' AND ST_Intersects(poi.geom, p.geom)