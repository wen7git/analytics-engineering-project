# Analytics Engineering Project <br>
**E-Commerce Sales Performance (2019)** <br>
Kaggle Data: https://www.kaggle.com/datasets/naofilahmad/sales-datset-product-sample?select=Sales+Data.csv <br>
Hex Dashboard: https://app.hex.tech/019a08be-edb8-700b-a62c-dcea10b5c063/app/E-Commerce-Sales-Performance-2019-031w99NvhMbGr97nwer15G/latest

## Project Overview
This analytics engineering project focuses on analyzing **E-Commerce sales performance (2019)** using a cvs dataset provided from above Kaggle Link. The dashboard in above link examines **order volume and revenue** across **geographic and time-based dimensions** to uncover demand patterns and operational insights.

## Key Insights & Analysis
The dashboard highlights **city-level demand concentration**, enabling identification of high-performing locations and order hotspots. It also evaluates customer ordering behavior across **days of the week** and **hours of the day** to identify **peak activity periods**.

## Filters
- **Order Date** – Selects Order date range  
- **Date Grain** – Adjust time aggregation (daily, weekly, monthly)  
- **Product** – Filter results to the selected product names  
- **Category** – Filter results to the selected product category
  
## Dashboard Components  
<img width="1397" height="633" alt="Screenshot 2025-12-23 at 9 10 02 PM" src="https://github.com/user-attachments/assets/4f2175d1-dff6-4749-9c37-8889678d2a94" />

- **Geographic Distribution of Orders by City** – Heat map highlighting areas of high order volume  
- **Scorecards** – Key metrics including total revenue, number of customers, total orders, and average order value (AOV)  

<img width="1385" height="640" alt="Screenshot 2025-12-23 at 9 12 11 PM" src="https://github.com/user-attachments/assets/9a8228bb-1aab-4f1a-82cd-cb5d67afa85c" />

- **Orders and Revenue Over Time** – Trend analysis of orders and revenue across selected time periods  
- **Revenue by Product** – Breakdown of revenue contribution by individual products  

<img width="1385" height="640" alt="Screenshot 2025-12-23 at 9 13 33 PM" src="https://github.com/user-attachments/assets/e8b1d5c9-8048-4361-ba2d-8944bf5e0114" />

- **Orders by Day of the Week** – Weekly ordering pattern analysis
- **Orders by Hour of the Day** – Intraday demand and peak period identification  

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

