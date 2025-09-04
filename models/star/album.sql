SELECT
  albumid,
  title,
  artistid
FROM {{ source('music_source', 'album1') }}

  
