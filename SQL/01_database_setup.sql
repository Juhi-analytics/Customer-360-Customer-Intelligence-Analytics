/*
==================================================
Customer 360 Analytics Platform
Database Validation Script
Author: Juhi
==================================================
Purpose:
Verify that all tables were imported successfully
before starting analysis.
==================================================
*/


USE customer360;


-- Check available tables

SHOW TABLES;


-- Verify row counts

SELECT 'customers' AS table_name, COUNT(*) AS total_rows
FROM customers

UNION ALL

SELECT 'orders_new', COUNT(*)
FROM orders_new

UNION ALL

SELECT 'order_items', COUNT(*)
FROM order_items

UNION ALL

SELECT 'payments', COUNT(*)
FROM payments

UNION ALL

SELECT 'reviews', COUNT(*)
FROM reviews;



DESCRIBE customers ;

DESCRIBE orders_new ;

DESCRIBE order_items ;
  
DESCRIBE payments;



-- customers
--     |
--     | customer_id
--     |
-- orders_new
--     |
--     | order_id
--     |
-- +------------------+
-- |                  |
-- order_items     payments


