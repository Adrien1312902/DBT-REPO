{{ config(materialized='view') }}

SELECT *
FROM {{ ref('fact_music') }}
WHERE YEAR(composer) = 2000 OR YEAR(composer) = 2002
