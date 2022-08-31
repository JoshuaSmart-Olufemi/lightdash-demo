with cte as (

    select * from {{ source('demo', 'demo_data') }}
)

select * from cte 
limit 100