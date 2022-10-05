with new_data as (

    select 
    *  
    , ("order_quantity" *5) *  ("revenue") as "profit"

     from {{ ref('data') }} as demo 
)

select * from new_data