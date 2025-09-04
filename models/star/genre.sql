SELECT
  artistid,
  name
FROM {{ source('music_source', 'artist') }}
