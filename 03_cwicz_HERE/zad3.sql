CREATE TABLE karlsruhe.streets_reprojected AS
SELECT *, ST_Transform(geom, 3068) AS geom_p
FROM karlsruhe.streets_2019;

ALTER TABLE karlsruhe.streets_reprojected
DROP COLUMN geom;