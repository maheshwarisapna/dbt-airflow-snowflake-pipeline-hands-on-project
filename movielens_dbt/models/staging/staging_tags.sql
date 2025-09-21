with source as (
    select *
    from {{ source('raw', 'tags') }}
)

select
    userId,
    movieId,
    tag,
    timestamp
from source