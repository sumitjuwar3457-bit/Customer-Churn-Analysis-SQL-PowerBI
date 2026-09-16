/* Customer Churn Analysis - EDA */

/* 1. Total Customers
   Business Question:
   How many total customers present in the dataset  */

select count(*) as total_customers
from customer_churn;

-- Insight:
-- The dataset contains 7032 customer records available for churn analysis.