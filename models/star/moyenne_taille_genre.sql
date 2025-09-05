{{ config(materialized='view') }}

SELECT genre, AVG(bytes) AS taille_moyenne
FROM {{ ref('fact_music') }}
GROUP BY genre
