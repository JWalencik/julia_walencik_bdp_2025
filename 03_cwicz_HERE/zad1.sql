SELECT b2019.*
FROM karlsruhe.buildings_2019 b2019
LEFT JOIN karlsruhe.buildings_2018 b2018
ON b2019.polygon_id = b2018.polygon_id
WHERE NOT ST_Equals(b2019.geom, b2018.geom) OR b2018.geom IS NULL