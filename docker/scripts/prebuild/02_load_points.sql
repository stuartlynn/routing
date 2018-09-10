CREATE TABLE locations (id TEXT PRIMARY KEY, x FLOAT8, y FLOAT8, dir SMALLINT);
\copy locations FROM 'scripts/input/locations.csv' HEADER CSV;
SELECT AddGeometryColumn('locations', 'point', 4326, 'POINT', 2);
UPDATE locations SET point = ST_SetSRID(ST_MakePoint(x, y), 4326);
