with cte as (

    select 
    "OrderDate" :: date 
    , "DueDate" :: date
    , "Sales_Channel" :: text
    , "OrderQty" :: integer
    , "Revenue" :: float
    , "Product_Name" :: text 
    , "StandardCost" :: float
    , "ListPrice" :: float
    , "Region" :: text
     from {{ source('demo', 'demo_data') }}
)

select * from cte 
limit 10