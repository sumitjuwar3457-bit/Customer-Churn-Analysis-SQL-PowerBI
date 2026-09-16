/* =====================================================
Customer Churn Analysis - Advance SQL Queries
===================================================== */

/* 1.CASE 
   Business Question:
   Which customer charge segment has the highest churn ?
*/

SELECT
    CASE
        WHEN MonthlyCharges < 40 THEN 'Low'
        WHEN MonthlyCharges < 80 THEN 'Medium'
        ELSE 'High'
    END AS charge_segment,
    COUNT(*) AS total_customers
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY charge_segment
ORDER BY total_customers DESC;

-- Insight:
-- Customers in the High Monthly Charges segment exhibit the
-- highest churn levels, with 910 customers leaving the company.
-- This suggests that higher service costs may contribute to
-- increased customer churn, making high-paying customers a
-- key target for retention strategies.






