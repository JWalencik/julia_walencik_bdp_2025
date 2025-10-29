ALTER TABLE karlsruhe.input_points
ADD COLUMN geom_p GEOMETRY(Point, 3068);

UPDATE karlsruhe.input_points
SET geom_p = ST_Transform(geom, 3068);

ALTER TABLE karlsruhe.input_points
DROP COLUMN geom;