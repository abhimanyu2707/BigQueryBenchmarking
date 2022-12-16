# BigQueryBenchmarking
Evaluate and benchmark BigQuery for spatial queries

## Data Preparation
- BigQuery only supports WGS 84 (also known epsg:4326), which is POINT(longitude latitude).
- But the csv data for PAIS is not in this format.
- Script in folder DataPreparation is used to convert wkt into supported format.



