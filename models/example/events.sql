with new_events as (

    select 
    country
    , event_timestamp
    , userss 
    , user_type
    , device_type
    from {{ ref('new_events') }} as events 
)

select * from new_events