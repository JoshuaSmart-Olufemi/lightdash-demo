with new_demo as (

    select 
    *  
    , ("OrderQty" * "ListPrice") as "Profit"

     from {{ ref('demo_data') }} as demo 
)

select * from new_demo 