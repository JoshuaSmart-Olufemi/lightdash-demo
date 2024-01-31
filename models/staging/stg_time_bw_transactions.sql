with base as (

    select *
    , datetime_diff(order_date, date_before, day) as days_between_transactions
    from {{ ref('stg_customer_orders') }}
)

select * 
--, avg(days_between_transactions) as average_days_between_transactions
from base
--group by 1,2,3,4,5,6