--Creating tables of different sizes from the actual table

CREATE TABLE pais_ds.pais_scaled_40k
AS SELECT * FROM pais_ds.pais_scaled
WHERE RAND() < 0.2;

CREATE TABLE pais_ds.pais_scaled_80k
AS SELECT * FROM pais_ds.pais_scaled
WHERE RAND() < 0.4;

CREATE TABLE pais_ds.pais_scaled_120k
AS SELECT * FROM pais_ds.pais_scaled
WHERE RAND() < 0.6;

CREATE TABLE pais_ds.pais_scaled_160k
AS SELECT * FROM pais_ds.pais_scaled
WHERE RAND() < 0.8;