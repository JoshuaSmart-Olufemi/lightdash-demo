with cte as (

    select 
    country :: text 
    , event_timestamp :: date
    , userss:: text 
    , user_type :: text
    , device_type :: text 
    from {{ source('demo', 'events') }} as events 
)

select * from cte 