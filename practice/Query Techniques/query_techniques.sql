------- Sub-queries
SELECT product_name, price
FROM products p
WHERE price > (
    SELECT AVG(price)
    FROM products
    WHERE category = p.category
);


-------EXISTS and NOT EXISTS
SELECT order_id, customer_name
FROM orders o
WHERE EXISTS (
    SELECT 1
    FROM products p
    WHERE p.product_id = o.product_id AND p.stock > 0
);

SELECT order_id, customer_name
FROM orders o
WHERE NOT EXISTS (
    SELECT 1
    FROM products p
    WHERE p.product_id = o.product_id AND p.stock = 0
);


-------Window Functions
-------Recursive Queries

WITH RECURSIVE org_chart AS (
    SELECT employee_id, manager_id, employee_name
    FROM employees
    WHERE manager_id IS NULL  -- Starting point (top-level managers)
    UNION ALL
    SELECT e.employee_id, e.manager_id, e.employee_name
    FROM employees e
    JOIN org_chart o ON e.manager_id = o.employee_id  -- Recursive part
)
SELECT * FROM org_chart;

-------CTEs(Common Table Expression) and Materialized CTEs
WITH top_products AS (
    SELECT product_name, price
    FROM products
    WHERE stock > 0
    ORDER BY price DESC
    LIMIT 10
)
SELECT * FROM top_products;

CREATE MATERIALIZED VIEW top_products AS
SELECT product_name, price
FROM products
WHERE stock > 0
ORDER BY price DESC
LIMIT 10;
REFRESH MATERIALIZED VIEW top_products;

-------EXISTS and NOT EXISTS