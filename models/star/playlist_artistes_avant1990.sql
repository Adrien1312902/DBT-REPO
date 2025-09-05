{{ config(materialized='view') }}

SELECT
  p.Name AS playlist_name,
  t.Name AS track_name,
  ar.Name AS artist_name,
  ar.BirthYear
FROM {{ source('music_source', 'playlisttrack') }} pt
JOIN {{ source('music_source', 'track') }} t ON pt.TrackId = t.TrackId
JOIN {{ source('music_source', 'album') }} al ON t.AlbumId = al.AlbumId
JOIN {{ source('music_source', 'artist') }} ar ON al.ArtistId = ar.ArtistId
JOIN {{ source('music_source', 'playlist') }} p ON pt.PlaylistId = p.PlaylistId
WHERE ar.BirthYear < 1990

