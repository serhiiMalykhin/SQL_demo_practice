-- Inner Join example: Get employee names along with their department name
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;

-- Left Join example: Get all employees with their department (show null if no department)
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;


SELECT e.first_name, e.last_name, a.activity_name
FROM employees e
JOIN employee_activities ea ON e.employee_id = ea.employee_id
JOIN activities a ON ea.activity_id = a.activity_id;
