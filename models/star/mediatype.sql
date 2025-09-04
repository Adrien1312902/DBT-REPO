SELECT
  mediatypeid,
  name
FROM {{ source('music_source', 'mediatype') }}
