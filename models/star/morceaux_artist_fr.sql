SELECT
  t.Name AS track_name,
  a.Name AS artist_name,
  ar.Country
FROM {{ source('music_source', 'track') }} t
JOIN {{ source('music_source', 'genre') }} g ON t.GenreId = g.GenreId
JOIN {{ source('music_source', 'album') }} al ON t.AlbumId = al.AlbumId
JOIN {{ source('music_source', 'artist') }} ar ON al.ArtistId = ar.ArtistId
WHERE g.Name = 'Rock'
  AND ar.Country = 'France'

