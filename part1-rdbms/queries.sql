-- Q1:
SELECT c.customer_name, SUM(o.total_amount) AS total_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE LOWER(c.city) = 'mumbai'
GROUP BY c.customer_name
ORDER BY total_order_value DESC;

-- Q2:
SELECT p.product_name, SUM(oi.quantity) AS total_quantity_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 3;

-- Q3:
SELECT s.rep_name, COUNT(DISTINCT o.customer_id) AS unique_customers_handled
FROM sales_reps s
LEFT JOIN orders o ON s.rep_id = o.rep_id
GROUP BY s.rep_name;

-- Q4:
SELECT *
FROM orders
WHERE total_amount > 10000
ORDER BY total_amount DESC;

-- Q5:
SELECT p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

