CREATE TABLE buildings (
id SERIAL PRIMARY KEY,
name VARCHAR(50),
geometry GEOMETRY(Polygon, 0) 
);

CREATE TABLE roads (
id SERIAL PRIMARY KEY,
name TEXT,
geometry GEOMETRY(LineString, 0) 
);

CREATE TABLE poi (
id SERIAL PRIMARY KEY,
name TEXT,
geometry GEOMETRY(Point, 0) 
);
