-- Create a view to show employee names with their department name
CREATE VIEW employee_details AS
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Query the view
SELECT * FROM employee_details;

-------------update view
CREATE VIEW updatable_view AS
SELECT employee_id, first_name, last_name, salary
FROM employees;

UPDATE updatable_view
SET salary = 60000
WHERE employee_id = 1;
-------------End

-------------Inline Views (Subquery Views):
SELECT * FROM (SELECT first_name, last_name FROM employees) AS inline_view;
-------------End
