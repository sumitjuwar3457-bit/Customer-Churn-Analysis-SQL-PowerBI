/* =====================================================
Customer Churn Analysis - Advance SQL Queries
===================================================== */

/* 2.SUBQUERY 
   Business Question:
   Find customers paying above average monthly charges
*/

SELECT customer_ID,
       MonthlyCharges
FROM customer_churn
WHERE MonthlyCharges > (
           SELECT AVG(MonthlyCharges) AS avg_monthly_charges
           FROM customer_churn
);

-- Insight:
-- A significant number of customers pay monthly charges above the
-- company average. These customers represent a high-value customer
-- segment and should be monitored closely, as higher monthly charges
-- have been associated with increased churn risk in previous analyses.