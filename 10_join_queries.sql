-- Orders with customer full name
SELECT
    o.id,
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    o.order_date
FROM orders o
JOIN customers c
ON o.customer_id = c.id;

-- Ordered product + quantity + order date
SELECT
    p.name,
    oi.quantity,
    o.order_date
FROM order_items oi
JOIN products p
ON oi.product_id = p.id
JOIN orders o
ON oi.order_id = o.id;

-- Total items purchased by customer
SELECT
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    SUM(oi.quantity) AS total_items
FROM customers c
JOIN orders o
ON c.id = o.customer_id
JOIN order_items oi
ON o.id = oi.order_id
GROUP BY c.id;

-- Total amount spent
SELECT
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o
ON c.id = o.customer_id
JOIN order_items oi
ON o.id = oi.order_id
JOIN products p
ON oi.product_id = p.id
GROUP BY c.id;

-- Orders in 2024
SELECT
    o.id,
    p.name,
    oi.quantity,
    o.order_date
FROM orders o
JOIN order_items oi
ON o.id = oi.order_id
JOIN products p
ON oi.product_id = p.id
WHERE YEAR(o.order_date) = 2024;

-- Customers with no orders
SELECT
    c.*
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.id IS NULL;

-- Top 5 customers
SELECT
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    SUM(oi.quantity) AS total_items
FROM customers c
JOIN orders o
ON c.id = o.customer_id
JOIN order_items oi
ON o.id = oi.order_id
GROUP BY c.id
ORDER BY total_items DESC
LIMIT 5;
