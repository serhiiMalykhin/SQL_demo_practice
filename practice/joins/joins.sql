--------------- inner join
--------------- Returns only the rows that have matching values in both tables.
SELECT o.order_id, o.order_date, p.product_name
FROM orders o
INNER JOIN products p ON o.product_id = p.product_id;

--------------- LEFT JOIN
--------------- Returns all rows from the left table and matched rows from the right table. If no match is found, NULL
SELECT o.order_id, o.order_date, p.product_name
FROM orders o
LEFT JOIN products p ON o.product_id = p.product_id;

--------------- RIGHT JOIN same as left join but for right table
SELECT o.order_id, o.order_date, p.product_name
FROM orders o
RIGHT JOIN products p ON o.product_id = p.product_id;

--------------- FULL OUTER JOIN
--------------- Returns rows when there is a match in one of the tables.
--------------- It returns NULL for unmatched rows from both sides.
SELECT o.order_id, o.order_date, p.product_name
FROM orders o
FULL OUTER JOIN products p ON o.product_id = p.product_id;

--------------- CROSS JOIN
--------------- Returns the Cartesian product of the two tables.
--------------- That is, it will return every combination of rows from the first and second table.
SELECT o.order_id, p.product_name
FROM orders o
CROSS JOIN products p;

--------------- SELF JOIN
--------------- A self join is a regular join, but the table is joined with itself.
--------------- It is used when you need to compare rows within the same table.
SELECT e1.employee_name AS employee, e2.employee_name AS manager
FROM employees e1
LEFT JOIN employees e2 ON e1.manager_id = e2.employee_id;

--------------- UNION
SELECT product_name FROM products WHERE stock > 0
UNION --- Combines the result sets of two or more SELECT statements, excluding duplicates.
SELECT product_name FROM products WHERE stock = 0;

SELECT product_name FROM products WHERE stock > 0
UNION ALL ---Similar to UNION, but includes duplicates.
SELECT product_name FROM products WHERE stock = 0;

--------------- INTERSECT
--------------- Returns only the rows that are common to both SELECT statements.
SELECT product_id FROM products WHERE stock > 0
INTERSECT
SELECT product_id FROM orders;
--------------- EXCEPT
--------------- Returns rows from the first SELECT statement that are not in the second SELECT statement.
SELECT product_name FROM products WHERE stock > 0
EXCEPT
SELECT product_name FROM orders;
