{{ config(materialized='view') }}

SELECT genre, COUNT(*) AS total
FROM {{ ref('fact_music') }}
WHERE YEAR(composer) BETWEEN 2000 AND 2009
GROUP BY genre
ORDER BY total DESC
LIMIT 1
