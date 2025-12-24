# Analytics Engineering Project <br>
**Sales Analytics (E-Commerce)** <br>
Kaggle Data: https://www.kaggle.com/datasets/naofilahmad/sales-datset-product-sample?select=Sales+Data.csv <br>
Hex Dashboard: https://app.hex.tech/019a08be-edb8-700b-a62c-dcea10b5c063/app/E-Commerce-Sales-031w99NvhMbGr97nwer15G/latest

## Project Overview
This analytics engineering project focuses on analyzing **E-Commerce sales performance (2019)** using a cvs dataset provided from above Kaggle Link. The dashboard in above link examines **order volume and revenue** across **geographic and time-based dimensions** to uncover demand patterns and operational insights.

## Key Insights & Analysis
The dashboard highlights **city-level demand concentration**, enabling identification of high-performing locations and order hotspots. It also evaluates customer ordering behavior across **days of the week** and **hours of the day** to identify **peak activity periods**.

## Dashboard Components  
- **Geographic Distribution of Orders by City** – Heat map showing regional demand concentration  
- **Orders by Day of the Week** – Weekly ordering pattern analysis  
- **Orders by Hour of the Day** – Intraday demand and peak period identification  

## Filters
- **Order Date** – Selects Order date range  
- **Date Grain** – Adjust time aggregation (daily, weekly, monthly)  
- **Product** – Filter results to the selected product names  
- **Category** – Filter results to the selected product category  

## Data Scope & Limitations
- The dataset includes **E-Commerce sales data exclusively for the year 2019**.  
- All insights and trends reflect behavior within this time period only.

## Tech Stack
- **BigQuery** – Data storage and processing  
- **SQL in dbt** – Data modeling and transformations  
- **Hex** – Data visualization and analysis  
- **Pandas** – Data manipulation within Hex

## Use Cases
- Demand forecasting and peak activity analysis  
- Geographic performance evaluation  
- Marketing and promotional planning  
- Operational and staffing optimization  

