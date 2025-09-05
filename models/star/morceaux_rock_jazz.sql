{{ config(materialized='view') }}

SELECT track_name, composer, genre
FROM {{ ref('fact_music') }}
WHERE genre IN ('Rock', 'Jazz')
