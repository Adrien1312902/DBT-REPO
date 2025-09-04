SELECT
  trackid,
  name,
  albumid,
  mediatypeid,
  genreid,
  composer,
  milliseconds,
  bytes,
  unitprice
FROM {{ source('music_source', 'track') }}
