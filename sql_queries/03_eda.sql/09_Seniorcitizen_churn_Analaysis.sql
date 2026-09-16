/* Customer Churn Analysis - EDA */

/* 9. Senior Citizen Churn Analysis
   Business Question:
   Does customer age group (Senior Citizen vs Non-Senior Citizen)
   influence churn behavior?
*/


SELECT SeniorCitizen, Churn,
COUNT(*) AS Total_customers
FROM customer_churn
GROUP BY SeniorCitizen, Churn ;


-- Insight:
-- Senior Citizens exhibit a higher tendency to churn compared
-- to non-senior customers. Although the total number of senior
-- customers is smaller, a significant proportion of them leave
-- the company, indicating that senior citizens represent a
-- relatively high-risk customer segment

