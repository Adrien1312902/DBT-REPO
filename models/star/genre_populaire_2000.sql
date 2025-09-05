SELECT
  g.Name AS genre,
  COUNT(*) AS play_count
FROM {{ source('music_source', 'track') }} t
JOIN {{ source('music_source', 'genre') }} g ON t.GenreId = g.GenreId
JOIN {{ source('music_source', 'album') }} a ON t.AlbumId = a.AlbumId
WHERE a.ProducedYear = 2000
GROUP BY g.Name
ORDER BY play_count DESC
LIMIT 1

