/* Customer Churn Analysis - EDA */

/* 6. Tenure Analysis
   Business Question:
   Do customers with shorter tenure churn more frequently than long-term customers?
*/

SELECT Churn,
AVG(tenure) AS avg_of_tenure
FROM customer_churn
GROUP BY Churn ;

-- Insight:
-- Customers who churned have an average tenure of only 17.98 months,
-- compared to 37.65 months for retained customers.
-- This indicates that newer customers are significantly more likely
-- to churn than long-term customers


