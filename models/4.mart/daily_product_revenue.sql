{{ config(
    materialized='table',
    partition_by={
        "field": "order_date",
        "data_type": "date"},
    cluster_by=['product_name']
) }}

-- partition this tables by order date to reduce scan costs and improve query latency

with 

sales as (

    select * from {{ ref('stg_sales_data') }}

),

product_aggregate as (

    select
        order_date,
        product_name,
        sum(item_revenue) as daily_revenue,
        sum(item_quantity) as daily_units
    from sales
    group by 1,2

)

select * from product_aggregate