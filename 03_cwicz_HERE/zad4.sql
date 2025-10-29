DROP TABLE IF EXISTS karlsruhe.input_points;
CREATE TABLE karlsruhe.input_points(
	id SERIAL PRIMARY KEY,
	geom GEOMETRY(Point, 4326)
);

INSERT INTO karlsruhe.input_points (geom) VALUES
(ST_GeomFromText('POINT(8.36093 49.03174)')),
(ST_GeomFromText('POINT(8.39876 49.00644)'));