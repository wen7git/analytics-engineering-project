{{ config(materialized='table') }}

with 

sales as (

    select * from {{ ref('stg_sales_data') }}

),

customer_details as (

    select

        distinct customer_id,
        city,
        purchase_address,

    from sales

)

select * from customer_details