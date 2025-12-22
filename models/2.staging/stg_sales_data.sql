with base as (

    select * from {{ ref('base_sales_data') }}

),

staged as (

    select
    
        -- ids
        order_id,
        -- customer_id is derived via a hash of the customer address due to the absence of names and emails.
        FARM_FINGERPRINT(lower(trim(purchase_address))) as customer_id,

        -- string
        product_category,
        product_name,
        city,
        purchase_address,
        time_of_day,

        -- numeric
        quantity_ordered,
        price_each,
        sales_amount,
        order_hour,

        -- date
        order_datetime,
        date(order_datetime) as order_date,

    from base

)

select * from staged
