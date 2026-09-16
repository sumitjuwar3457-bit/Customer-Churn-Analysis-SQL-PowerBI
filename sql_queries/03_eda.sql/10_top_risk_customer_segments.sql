/* Customer Churn Analysis - EDA */

/* 10. Top Risk Customer Segments
   Business Question:
   Which customer segments are most likely to churn based on
   contract type and internet service?
*/


SELECT Contract,
       InternetService,
       AVG(MonthlyCharges) AS avg_monthly_charges
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY Contract, InternetService ;


-- Insight:
-- Among churned customers, Fiber Optic users consistently
-- exhibit the highest average monthly charges across all
-- contract types. Customers with Month-to-Month contracts
-- and Fiber Optic internet service represent a particularly
-- high-risk segment due to the combination of high charges
-- and previously observed high churn levels
