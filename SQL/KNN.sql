--KNN operation: For a polygon get 5 nearest neighbor

--Table size ~40k
SELECT
  p1.markup_uid as reference_markup_uid,
  ARRAY_AGG(p2.markup_uid ORDER BY ST_Distance(p1.polygon, p2.polygon) LIMIT 5)
as neighbor_markup_uid
FROM `pais_ds.pais_scaled_40k` p1, `pais_ds.pais_scaled_40k` p2
WHERE
    p1.markup_uid = '000000000000000000000006801221' AND p1.markup_uid <> p2.markup_uid
GROUP BY p1.markup_uid;

--Table size ~80k
SELECT
  p1.markup_uid as reference_markup_uid,
  ARRAY_AGG(p2.markup_uid ORDER BY ST_Distance(p1.polygon, p2.polygon) LIMIT 5)
as neighbor_markup_uid
FROM `pais_ds.pais_scaled_80k` p1, `pais_ds.pais_scaled_80k` p2
WHERE
    p1.markup_uid = '000000000000000000000003306067' AND p1.markup_uid <> p2.markup_uid
GROUP BY p1.markup_uid;

--Table size ~120k
SELECT
  p1.markup_uid as reference_markup_uid,
  ARRAY_AGG(p2.markup_uid ORDER BY ST_Distance(p1.polygon, p2.polygon) LIMIT 5)
as neighbor_markup_uid
FROM `pais_ds.pais_scaled_120k` p1, `pais_ds.pais_scaled_120k` p2
WHERE
    p1.markup_uid = '000000000000000000000005102727' AND p1.markup_uid <> p2.markup_uid
GROUP BY p1.markup_uid;

--Table size ~160k
SELECT
  p1.markup_uid as reference_markup_uid,
  ARRAY_AGG(p2.markup_uid ORDER BY ST_Distance(p1.polygon, p2.polygon) LIMIT 5)
as neighbor_markup_uid
FROM `pais_ds.pais_scaled_160k` p1, `pais_ds.pais_scaled_160k` p2
WHERE
    p1.markup_uid = '000000000000000000000006603374' AND p1.markup_uid <> p2.markup_uid
GROUP BY p1.markup_uid;

--Table size ~200k
SELECT
  p1.markup_uid as reference_markup_uid,
  ARRAY_AGG(p2.markup_uid ORDER BY ST_Distance(p1.polygon, p2.polygon) LIMIT 5)
as neighbor_markup_uid
FROM `pais_ds.pais_scaled` p1, `pais_ds.pais_scaled` p2
WHERE
    p1.markup_uid = '000000000000000000000005100616' AND p1.markup_uid <> p2.markup_uid
GROUP BY p1.markup_uid;