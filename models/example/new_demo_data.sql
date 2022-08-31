with new_demo as (

    select * from {{ ref('demo_data') }}
)

select * from new_demo 