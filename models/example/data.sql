
with new_data as (

    select 
    order_date
    , due_date
    , order_status 
    , sales_channel
    , customer_id
    , order_quantity
    , revenue
    , product_category
    , region 
    , revenue * 5 as profit

     from {{ ref('new_data') }} as demo 
)

select * from new_data
 





