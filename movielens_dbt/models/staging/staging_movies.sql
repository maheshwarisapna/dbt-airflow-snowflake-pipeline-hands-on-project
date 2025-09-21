select
    movieid,
    title,
    genres
from {{ source('raw', 'movie') }}