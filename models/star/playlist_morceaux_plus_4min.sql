{{ config(materialized='view') }}

SELECT DISTINCT p.playlistid
FROM {{ ref('fact_music') }} f
JOIN {{ ref('playlisttrack') }} p ON f.trackid = p.trackid
WHERE f.milliseconds > 240000
