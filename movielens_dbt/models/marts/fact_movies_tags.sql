SELECT
    m.movieId,
    m.title,
    t.tag,
    t.timestamp
FROM {{ ref('staging_movies') }} m
JOIN {{ ref('staging_tags') }} t
ON m.movieId = t.movieId