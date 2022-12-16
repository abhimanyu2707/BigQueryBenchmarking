# BigQueryBenchmarking
Evaluate and benchmark BigQuery for spatial queries

## Data Preparation
### Scaling data to longitude latitude format
- BigQuery only supports WGS 84 (also known epsg:4326), which is POINT(longitude latitude).
- But the csv data for PAIS is not in this format.
- Script in folder DataPreparation is used to convert wkt into supported format.

## BigQuery Table Creation
- csv files greater than 100MB needs to be stored in Google Cloud Storage
- Step: Create a bucket and upload file in it.
- In BigQuery webpage table can be created using the csv file.
- Schema needs to be provided to avoid error.
- SQL/Partition.sql script is used to create table of different sizes with random rows from actual table.

## Spatial Operations
- KNN operation script is in SQL/KNN.sql
- Join operation script is in SQL/JOIN.sql
- Containment operation script is in SQL/Containment.sql



