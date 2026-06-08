-- Select all products
SELECT * FROM products;

-- Product names and prices
SELECT name, price FROM products;

-- All customers
SELECT * FROM customers;

-- Distinct categories
SELECT DISTINCT category
FROM products;

-- First 10 products
SELECT *
FROM products
LIMIT 10;
