with 

sales as (

    select * from {{ ref('stg_sales_data') }}

),

aggregated_sales_orders as (

    select
        
        order_id,
        customer_id,
        order_date,
        city,

        count(distinct product_name) as distinct_products,
        sum(quantity_ordered) as total_items,
        sum(sales_amount) as order_revenue

    from sales
    group by 1,2,3,4

)

select * from aggregated_sales_orders