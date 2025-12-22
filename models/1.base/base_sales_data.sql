-- 
with source as (

    select

        -- ids
        cast(`Order ID` as int64) as order_id,

        -- string
        `Product Category` as product_category,
        `Product` as product_name,
        `Purchase Address` as purchase_address,
        `City` as city,
        `Time of Day` as time_of_day,

        -- numeric
        cast(`Quantity Ordered` as int64) as quantity_ordered,
        cast(`Price Each` as numeric) as price_each,
        cast(`Month` as int64) as order_month,
        cast(`Sales` as numeric) as sales_amount,
        cast(`Hour` as int64) as order_hour,

        -- date
        `Order Date` as order_datetime,

    from `raw-data-481618.raw.e_commerce_sales_data`

)

select * from source