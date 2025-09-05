{{ config(materialized='view') }}

SELECT f.track_name, f.artist_name, a.country
FROM {{ ref('fact_music') }} f
JOIN {{ ref('artist') }} a ON f.artist_name = a.name
WHERE f.genre = 'Rock' AND a.country = 'France'
