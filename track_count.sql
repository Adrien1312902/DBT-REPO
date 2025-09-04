SELECT 
    genreid, 
    COUNT(*) AS nb_tracks
FROM {{ ref('track') }}
GROUP BY genreid
