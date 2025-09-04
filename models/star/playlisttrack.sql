SELECT
  playlistid,
  trackid
FROM {{ source('music_source', 'playlisttrack') }}
