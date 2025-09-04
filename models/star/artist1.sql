SELECT
  artistid,
  name AS artist_name
FROM {{ source('music_source', 'artist') }}
