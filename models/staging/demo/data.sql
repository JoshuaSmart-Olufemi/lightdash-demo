with cte as (

    select 
    "order_date" :: date 
    , "due_date" :: date
    , "order_status" :: integer 
    , "sales_channel" :: text
    , "customer_id" :: integer 
    , "order_quantity" :: integer
    , "revenue" :: float
    , "product_category" :: text 
    , "region" :: text
     from {{ source('demo', 'data') }}
)

select * from cte 
limit 10