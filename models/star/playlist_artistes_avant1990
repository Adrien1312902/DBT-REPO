{{ config(materialized='view') }}

SELECT DISTINCT p.playlistid
FROM {{ ref('fact_music') }} f
JOIN {{ ref('playlisttrack') }} p ON f.trackid = p.trackid
JOIN {{ ref('artist') }} a ON f.artist_name = a.name
WHERE a.birthyear < 1990
