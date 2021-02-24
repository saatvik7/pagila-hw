/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

SELECT
customer.customer_id, first_name, last_name, SUM(amount)
FROM customer
INNER JOIN payment USING (customer_id)
GROUP BY (customer.customer_id, first_name, last_name)
ORDER BY last_name;
