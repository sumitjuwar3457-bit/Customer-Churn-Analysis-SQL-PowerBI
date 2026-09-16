/* Customer Churn Analysis - EDA */

/* 3. Gender vs Churn
   Business Question:
   How many customers have churned versus retained the company */

select gender , churn,
count(*) as total_customers
from customer_churn
group by gender , churn ;

-- Insight:
-- Churn behavior is nearly equal among male and female customers,
-- indicating that gender has minimal impact on customer churn.


