WITH ip_line AS(
	SELECT ST_Buffer(ST_ShortestLine(ip1.geom_p, ip2.geom_p), 200) AS geom
	FROM karlsruhe.input_points ip1, karlsruhe.input_points ip2
	WHERE ip1.id=1 AND ip2.id=2),
ip_line_p AS(
	SELECT ST_Transform(geom, 4326) AS geom_p
	FROM ip_line)

SELECT sn.*
FROM karlsruhe.street_node_2019 sn, ip_line_p
WHERE ST_Intersects(sn.geom, ip_line_p.geom_p)
