SELECT
  t.trackid,
  t.name AS track_name,
  a.title AS album_title,
  ar.name AS artist_name,
  g.name AS genre,
  m.name AS mediatype,
  t.composer,
  a.Prod_year, 
  t.milliseconds,
  t.bytes,
  t.unitprice
FROM {{ source('music_source', 'track') }} t
LEFT JOIN {{ source('music_source', 'album') }} a ON t.albumid = a.albumid
LEFT JOIN {{ source('music_source', 'artist') }} ar ON a.artistid = ar.artistid
LEFT JOIN {{ source('music_source', 'genre') }} g ON t.genreid = g.genreid
LEFT JOIN {{ source('music_source', 'mediatype') }} m ON t.mediatypeid = m.mediatypeid




