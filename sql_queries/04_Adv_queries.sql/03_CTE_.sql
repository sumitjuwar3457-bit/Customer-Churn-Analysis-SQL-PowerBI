/* =====================================================
Customer Churn Analysis - Advance SQL Queries
===================================================== */

/* 3.CTE 
   Business Question:
   Find churn count by contract type using a CTE.
*/

WITH contract_churn AS (

      SELECT Contract , Churn ,
      COUNT(*) AS Total_customers
      FROM customer_churn
      GROUP BY Contract , Churn 
      
)
SELECT *
FROM contract_churn;

-- Insight:
-- Customers with Month-to-Month contracts show the highest churn
-- count (1,655 customers), while One-Year and Two-Year contracts
-- have significantly lower churn, indicating that longer contracts
-- improve customer retention.