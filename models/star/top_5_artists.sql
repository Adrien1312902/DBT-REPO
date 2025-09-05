-- models/top_5_artists.sql
SELECT 
  artist_name,
  COUNT(*) AS nb_tracks
FROM {{ ref('fact_music') }}
GROUP BY artist_name
ORDER BY nb_tracks DESC
LIMIT 5
