-- Top 10 states by revenue

SELECT
    customer_state,
    SUM(payment_value) AS revenue
FROM sales
GROUP BY customer_state
ORDER BY revenue DESC
LIMIT 10;

-- Top 10 customers

SELECT
    customer_unique_id,
    SUM(payment_value) AS revenue
FROM sales
GROUP BY customer_unique_id
ORDER BY revenue DESC
LIMIT 10;

-- Revenue by payment type

SELECT
    payment_type,
    SUM(payment_value) AS revenue
FROM sales
GROUP BY payment_type;