-- Total products
SELECT COUNT(*) AS total_products
FROM products;

-- Average product price
SELECT AVG(price) AS average_price
FROM products;

-- Total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Total sold items
SELECT SUM(quantity) AS total_items_sold
FROM order_items;

-- Orders per customer
SELECT
    customer_id,
    COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;

-- Highest priced product
SELECT *
FROM products
ORDER BY price DESC
LIMIT 1;

-- Products per category
SELECT
    category,
    COUNT(*) AS total_products
FROM products
GROUP BY category;
