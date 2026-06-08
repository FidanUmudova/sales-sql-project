-- Products price > 50
SELECT *
FROM products
WHERE price > 50;

-- Customers from Baku
SELECT *
FROM customers
WHERE city = 'Baku';

-- Electronics products
SELECT *
FROM products
WHERE category = 'Electronics';

-- Orders after 2024-01-01
SELECT *
FROM orders
WHERE order_date > '2024-01-01';

-- Gmail users
SELECT *
FROM customers
WHERE email LIKE '%@gmail.com';

-- Price between 20 and 80
SELECT *
FROM products
WHERE price BETWEEN 20 AND 80;

-- Not Clothing
SELECT *
FROM products
WHERE category <> 'Clothing';
