/* cleaning data */

/* Checking duplicates */

SELECT customer_ID, COUNT(*)
FROM customer_churn
GROUP BY customer_ID
HAVING COUNT(*) > 1;
