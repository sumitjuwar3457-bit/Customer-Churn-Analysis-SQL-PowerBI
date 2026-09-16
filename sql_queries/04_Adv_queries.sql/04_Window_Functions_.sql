/* =====================================================
Customer Churn Analysis - Advance SQL Queries
===================================================== */

/* 4.Window Functions 
   Business Question:
   Rank contract types by churn count
*/

WITH contract_churn AS (

      SELECT Contract ,
      COUNT(*) AS churn_count
      FROM customer_churn
      WHERE Churn = 'Yes'
      GROUP BY Contract  
      
)
SELECT *,
       RANK() OVER(
       ORDER BY churn_count DESC
       ) AS rank_no
FROM contract_churn;



-- Insight:
-- Month-to-Month contracts have the highest churn count (1,655),
-- ranking first among all contract types. In contrast, One-Year
-- and Two-Year contracts show significantly lower churn,
-- highlighting the positive impact of long-term contracts on retention.