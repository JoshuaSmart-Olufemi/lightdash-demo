with base_cte as (

    select 
    cast(customer_id as integer) as customer_id
    , cast(order_id as integer) as order_id
    , cast(order_date as date) as order_date
    , cast(revenue as integer) as revenue
    from {{ source('dataset_one', 'customers') }}
)

select *
from base_cte
order by 1