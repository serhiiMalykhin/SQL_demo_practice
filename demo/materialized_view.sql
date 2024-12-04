CREATE MATERIALIZED VIEW materialized_view AS
SELECT d.department_name, AVG(salary) as avg_salary
FROM employees e
left join departments d on e.department_id = d.department_id
GROUP BY department_name;

REFRESH MATERIALIZED VIEW materialized_view;

-----test after creation
-- Insert data into departments table
INSERT INTO departments ( department_name) VALUES
( 'HR'),
( 'Engineering'),
( 'Marketing');

-- Insert data into employees table
INSERT INTO employees (first_name, last_name, salary, department_id) VALUES
( 'Robert', 'Brown', 60000, 2),
('Michael', 'Williams', 80000, 2);