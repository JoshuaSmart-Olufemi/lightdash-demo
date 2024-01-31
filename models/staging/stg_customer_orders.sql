with base_cte as (

    select 
    cast(customer_id as integer) as customer_id
    , cast(order_id as integer) as order_id
    , cast(order_date as date) as order_date
    , cast(revenue as integer) as revenue
    from {{ source('dataset_one', 'customers') }}
)

, date_before as (
    select *
    , cast(lag(order_date) over (order by  order_date) as date) as date_before

    from base_cte

)


select *
from date_before
order by 3