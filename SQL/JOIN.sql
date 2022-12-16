--Join operations: For each polygon count polygons which are under 50.0 unit distance

--Table size ~40k
SELECT
    p1.markup_uid as reference_markup_uid,
    COUNT(*) AS neighbor_count
FROM `pais_ds.pais_scaled_40k` p1, `pais_ds.pais_scaled_40k` p2
WHERE p1.markup_uid <> p2.markup_uid AND ST_DWithin(p1.polygon, p2.polygon,50.00)
GROUP BY p1.markup_uid
ORDER BY neighbor_count DESC;

--Table size ~80k
SELECT
    p1.markup_uid as reference_markup_uid,
    COUNT(*) AS neighbor_count
FROM `pais_ds.pais_scaled_80k` p1, `pais_ds.pais_scaled_80k` p2
WHERE p1.markup_uid <> p2.markup_uid AND ST_DWithin(p1.polygon, p2.polygon,50.00)
GROUP BY p1.markup_uid
ORDER BY neighbor_count DESC;

--Table size ~120k
SELECT
    p1.markup_uid as reference_markup_uid,
    COUNT(*) AS neighbor_count
FROM `pais_ds.pais_scaled_120k` p1, `pais_ds.pais_scaled_120k` p2
WHERE p1.markup_uid <> p2.markup_uid AND ST_DWithin(p1.polygon, p2.polygon,50.00)
GROUP BY p1.markup_uid
ORDER BY neighbor_count DESC;

--Table size ~160k
SELECT
    p1.markup_uid as reference_markup_uid,
    COUNT(*) AS neighbor_count
FROM `pais_ds.pais_scaled_160k` p1, `pais_ds.pais_scaled_160k` p2
WHERE p1.markup_uid <> p2.markup_uid AND ST_DWithin(p1.polygon, p2.polygon,50.00)
GROUP BY p1.markup_uid
ORDER BY neighbor_count DESC;

--Table size ~200k
SELECT
    p1.markup_uid as reference_markup_uid,
    COUNT(*) AS neighbor_count
FROM `pais_ds.pais_scaled` p1, `pais_ds.pais_scaled` p2
WHERE p1.markup_uid <> p2.markup_uid AND ST_DWithin(p1.polygon, p2.polygon,50.00)
GROUP BY p1.markup_uid
ORDER BY neighbor_count DESC;