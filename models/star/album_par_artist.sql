{{ config(materialized='view') }}

SELECT artist_name, COUNT(DISTINCT album_title) AS nb_albums
FROM {{ ref('fact_music') }}
GROUP BY artist_name
