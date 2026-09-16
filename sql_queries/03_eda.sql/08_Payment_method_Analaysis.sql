/* Customer Churn Analysis - EDA */

/* 8. Payment Method Analysis
   Business Question:
   Which payment methods are associated with the highest customer churn?
*/

SELECT PaymentMethod, Churn,
COUNT(*) AS Total_customers
FROM customer_churn
GROUP BY PaymentMethod, Churn ;


-- Insight:
-- Customers using Electronic Check as their payment method
-- exhibit the highest churn levels, with 1071 customers leaving
-- the company. In contrast, customers using automatic payment
-- methods such as Credit Card and Bank Transfer show significantly
-- lower churn counts, suggesting that automated payment methods
-- are associated with better customer retention


