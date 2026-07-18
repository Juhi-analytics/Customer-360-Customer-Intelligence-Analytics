/*
====================================================================================
Project Name : Customer 360 Analytics Platform

Module       : 07 - Stored Procedures

Author       : Juhi

Database     : customer360

Description
-----------
This module creates reusable stored procedures for executive reporting,
customer analytics, RFM reporting, and business insights.

====================================================================================
*/

USE customer360;

DELIMITER $$

-- ================================================================================
-- PROCEDURE 1 : EXECUTIVE KPI DASHBOARD
-- ================================================================================

DROP PROCEDURE IF EXISTS sp_executive_dashboard $$

CREATE PROCEDURE sp_executive_dashboard()

BEGIN

SELECT

COUNT(DISTINCT c.customer_unique_id) AS total_customers,

COUNT(DISTINCT o.order_id) AS total_orders,

ROUND(SUM(p.payment_value),2) AS total_revenue,

ROUND(AVG(p.payment_value),2) AS average_order_value

FROM customers c

JOIN orders_new o
ON c.customer_id = o.customer_id

JOIN payments p
ON o.order_id = p.order_id;

END $$

-- ================================================================================
-- PROCEDURE 2 : SALES BY STATE
-- ================================================================================

DROP PROCEDURE IF EXISTS sp_sales_by_state $$

CREATE PROCEDURE sp_sales_by_state()

BEGIN

SELECT

c.customer_state,

COUNT(DISTINCT o.order_id) AS total_orders,

ROUND(SUM(p.payment_value),2) AS total_revenue,

ROUND(AVG(p.payment_value),2) AS average_order_value

FROM customers c

JOIN orders_new o
ON c.customer_id = o.customer_id

JOIN payments p
ON o.order_id = p.order_id

GROUP BY c.customer_state

ORDER BY total_revenue DESC;

END $$

-- ================================================================================
-- PROCEDURE 3 : SALES BY CITY
-- ================================================================================

DROP PROCEDURE IF EXISTS sp_sales_by_city $$

CREATE PROCEDURE sp_sales_by_city()

BEGIN

SELECT

c.customer_city,

COUNT(DISTINCT o.order_id) AS total_orders,

ROUND(SUM(p.payment_value),2) AS revenue

FROM customers c

JOIN orders_new o
ON c.customer_id = o.customer_id

JOIN payments p
ON o.order_id = p.order_id

GROUP BY c.customer_city

ORDER BY revenue DESC;

END $$

-- ================================================================================
-- PROCEDURE 4 : MONTHLY SALES REPORT
-- ================================================================================

DROP PROCEDURE IF EXISTS sp_monthly_sales $$

CREATE PROCEDURE sp_monthly_sales()

BEGIN

SELECT

DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS sales_month,

COUNT(DISTINCT o.order_id) AS total_orders,

ROUND(SUM(p.payment_value),2) AS revenue

FROM orders_new o

JOIN payments p
ON o.order_id = p.order_id

GROUP BY sales_month

ORDER BY sales_month;

END $$

-- ================================================================================
-- PROCEDURE 5 : TOP N CUSTOMERS
-- ================================================================================

DROP PROCEDURE IF EXISTS sp_top_customers $$

CREATE PROCEDURE sp_top_customers(IN top_n INT)

BEGIN

SELECT

c.customer_unique_id,

COUNT(DISTINCT o.order_id) AS total_orders,

ROUND(SUM(p.payment_value),2) AS total_revenue

FROM customers c

JOIN orders_new o
ON c.customer_id = o.customer_id

JOIN payments p
ON o.order_id = p.order_id

GROUP BY c.customer_unique_id

ORDER BY total_revenue DESC

LIMIT top_n;

END $$

-- ================================================================================
-- PROCEDURE 6 : CUSTOMER SEARCH
-- ================================================================================

DROP PROCEDURE IF EXISTS sp_customer_lookup $$

CREATE PROCEDURE sp_customer_lookup(IN customerID VARCHAR(50))

BEGIN

SELECT

c.customer_unique_id,

c.customer_city,

c.customer_state,

COUNT(DISTINCT o.order_id) AS total_orders,

ROUND(SUM(p.payment_value),2) AS total_revenue

FROM customers c

JOIN orders_new o
ON c.customer_id = o.customer_id

JOIN payments p
ON o.order_id = p.order_id

WHERE c.customer_unique_id = customerID

GROUP BY

c.customer_unique_id,
c.customer_city,
c.customer_state;

END $$

-- ================================================================================
-- PROCEDURE 7 : CUSTOMER SEGMENT REPORT
-- ================================================================================

DROP PROCEDURE IF EXISTS sp_customer_segments $$

CREATE PROCEDURE sp_customer_segments()

BEGIN

SELECT

customer_segment,

COUNT(*) AS total_customers,

ROUND(SUM(monetary),2) AS total_revenue,

ROUND(AVG(monetary),2) AS average_customer_value

FROM customer_rfm

GROUP BY customer_segment

ORDER BY total_revenue DESC;

END $$

-- ================================================================================
-- PROCEDURE 8 : CHAMPION CUSTOMERS
-- ================================================================================

DROP PROCEDURE IF EXISTS sp_champions $$

CREATE PROCEDURE sp_champions()

BEGIN

SELECT *

FROM customer_rfm

WHERE customer_segment = 'Champions'

ORDER BY monetary DESC;

END $$

-- ================================================================================
-- PROCEDURE 9 : AT RISK CUSTOMERS
-- ================================================================================

DROP PROCEDURE IF EXISTS sp_at_risk $$

CREATE PROCEDURE sp_at_risk()

BEGIN

SELECT *

FROM customer_rfm

WHERE customer_segment = 'At Risk'

ORDER BY monetary DESC;

END $$

-- ================================================================================
-- PROCEDURE 10 : EXECUTIVE SUMMARY
-- ================================================================================

DROP PROCEDURE IF EXISTS sp_project_summary $$

CREATE PROCEDURE sp_project_summary()

BEGIN

SELECT

COUNT(*) AS total_customers,

ROUND(SUM(monetary),2) AS total_revenue,

ROUND(AVG(monetary),2) AS average_customer_value,

ROUND(AVG(recency),2) AS average_recency,

ROUND(AVG(frequency),2) AS average_frequency

FROM customer_rfm;

END $$

DELIMITER ;

-- ================================================================================
-- EXECUTE PROCEDURES
-- ================================================================================

CALL sp_executive_dashboard();

CALL sp_sales_by_state();

CALL sp_sales_by_city();

CALL sp_monthly_sales();

CALL sp_top_customers(10);

-- Replace the sample ID below with an actual customer_unique_id from your data
CALL sp_customer_lookup('9ef432eb6251297304e76186b10a928d');

CALL sp_customer_segments();

CALL sp_champions();

CALL sp_at_risk();

CALL sp_project_summary();

-- ================================================================================
-- END OF MODULE 07
-- ================================================================================