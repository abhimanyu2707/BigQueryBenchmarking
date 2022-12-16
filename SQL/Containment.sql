--Containment Operation: Count polygons inside a given tile

--Table size ~40k
SELECT
    COUNT(*) AS polygon_inside
FROM `pais_ds.pais_scaled_40k`
WHERE ST_CONTAINS(ST_GEOGFROMTEXT('POLYGON((0.1 0.1, 0.3 0.1, 0.3 0.3, 0.1 0.3, 0.1 0.1))'), polygon);

--Table size ~80k
SELECT
    COUNT(*) AS polygon_inside
FROM `pais_ds.pais_scaled_80k`
WHERE ST_CONTAINS(ST_GEOGFROMTEXT('POLYGON((0.1 0.1, 0.3 0.1, 0.3 0.3, 0.1 0.3, 0.1 0.1))'), polygon);

--Table size ~120k
SELECT
    COUNT(*) AS polygon_inside
FROM `pais_ds.pais_scaled_120k`
WHERE ST_CONTAINS(ST_GEOGFROMTEXT('POLYGON((0.1 0.1, 0.3 0.1, 0.3 0.3, 0.1 0.3, 0.1 0.1))'), polygon);

--Table size ~160k
SELECT
    COUNT(*) AS polygon_inside
FROM `pais_ds.pais_scaled_160k`
WHERE ST_CONTAINS(ST_GEOGFROMTEXT('POLYGON((0.1 0.1, 0.3 0.1, 0.3 0.3, 0.1 0.3, 0.1 0.1))'), polygon);

--Table size ~200k
SELECT
    COUNT(*) AS polygon_inside
FROM `pais_ds.pais_scaled`
WHERE ST_CONTAINS(ST_GEOGFROMTEXT('POLYGON((0.1 0.1, 0.3 0.1, 0.3 0.3, 0.1 0.3, 0.1 0.1))'), polygon);