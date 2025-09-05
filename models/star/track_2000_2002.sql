{{ config(materialized='view') }}

SELECT *
FROM {{ ref('fact_music') }}
WHERE Prod_year IN (2000, 2002)

