/* =====================================================
Customer Churn Analysis - Advance SQL Queries
===================================================== */

/* 5. Combined Risk Analysis
   Business Question:
   Which customer segment has the highest average monthly charges among churned customers?
*/

SELECT Contract, 
       InternetService,
       AVG(MonthlyCharges) AS avg_monthly_charges
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY Contract, InternetService
ORDER BY avg_monthly_charges DESC;



-- Insight:
-- Churned customers using Fiber Optic internet service have the
-- highest average monthly charges across all contract types.
-- The highest-risk segment is Two-Year Contract + Fiber Optic,
-- with an average monthly charge of 104.71.