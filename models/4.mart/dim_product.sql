{{ config(materialized='table') }}

with 

staged as (

    select * from {{ ref('stg_sales_data') }}

),

product_details as (

    select

        distinct product_name,
        product_category,
        price_each,

    from staged

)

select * from product_details