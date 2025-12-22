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

orders as (

    select * from {{ ref('int_orders') }}

),

selected_fields as(

    select

        order_id,
        customer_id,
        order_date,
        city,

        distinct_products,
        total_items,
        order_revenue,

    from orders

)

select * from selected_fields