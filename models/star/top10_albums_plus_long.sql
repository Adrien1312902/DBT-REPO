{{ config(materialized='view') }}

SELECT album_title, SUM(milliseconds) AS duree_totale
FROM {{ ref('fact_music') }}
GROUP BY album_title
ORDER BY duree_totale DESC
LIMIT 10
