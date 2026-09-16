/* Customer Churn Analysis - EDA */

/* 5. Monthly Charges analysis
   Business Question:
   Do customers with higher monthly charges churn more frequently ? */

select Churn,
avg(MonthlyCharges) as avg_month_charges
from customer_churn
group by Churn ;

-- Insight:
-- Customers who churned have higher average monthly charges
-- compared to retained customers, indicating that pricing
-- may influence customer churn behavior.


