 {{ config(
    materialized='table',
    partition_by={
        "field": "order_date",
        "data_type": "date"
    }
) }}

/* 
partition this tables by order date to reduce scan costs and improve query latency,
especially as transaction volumes grow to millions of rows over time. 

To futher optimized we can materialize it as a incremental model instead of as table using below jinja:
{% if is_incremental() %}
where order_date >= (select max(order_date) from {{ this }})
{% endif %}
*/


with 

sales as (

    select * from {{ ref('stg_sales_data') }}

),

order_items as (

    select

        order_id,
        product_name,
        customer_id,
        order_date,
        city,
        time_of_day,
        order_hour,
        quantity_ordered as item_quantity,
        price_each as item_price,
        sales_amount as item_revenue

    from sales

)

select * from order_items
