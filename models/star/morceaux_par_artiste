{{ config(materialized='view') }}

SELECT artist_name, COUNT(DISTINCT trackid) AS nb_morceaux
FROM {{ ref('fact_music') }}
GROUP BY artist_name
