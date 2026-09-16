/* Customer Churn Analysis - EDA */

/* 2. Churn Rate
   Business Question:
   How many customers have churned versus retained the company */

select churn ,
count(*) as total_customers
from customer_churn
group by churn;


-- Insight:
-- Out of 7032 total customers, 1869 customers have churned,
-- while 5163 customers were retained by the company. 