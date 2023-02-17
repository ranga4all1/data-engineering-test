{{ config(materialized='view') }}

select * from {{ source('staging', 'tripdata_partitoned_clustered') }}
limit 100