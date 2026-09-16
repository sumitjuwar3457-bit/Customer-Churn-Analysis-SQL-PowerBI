/* Customer Churn Analysis - EDA */

/* 4. contract type vs churn
   Business Question:
   which contract types have highest customers churn rates ? */

select contract , churn,
count(*) as total_customers
from customer_churn
group by contract , churn ;

-- Insight:
-- Customers with month-to-month contracts show significantly higher churn rates,
-- while customers with one-year and two-year contracts are more likely to stay with the company.


