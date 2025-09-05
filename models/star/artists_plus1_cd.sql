
{{ config(materialized='view') }}

SELECT album_title, COUNT(DISTINCT trackid) AS nombre_de_morceaux
FROM {{ ref('fact_music') }}
GROUP BY album_title
HAVING COUNT(DISTINCT trackid) > 1

