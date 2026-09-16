/* Customer Churn Analysis - EDA */

/* 7. Internet Service vs Churn
   Business Question:
   Which internet service type has the highest customer churn?
*/

SELECT InternetService, Churn,
COUNT(*) AS Total_customers
FROM customer_churn
GROUP BY InternetService, Churn ;


-- Insight:
-- Customers using Fiber Optic internet service show the highest
-- churn levels, with 1297 customers leaving the company.
-- In comparison, DSL and customers without internet service
-- have significantly lower churn counts, indicating that
-- Fiber Optic customers represent a high-risk customer segment.


