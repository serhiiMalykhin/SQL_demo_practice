-- Temporary query using CTE to find employees with a salary greater than 55000
WITH high_salary_employees AS (
    SELECT first_name, last_name, salary
    FROM employees
    WHERE salary > 55000
)
SELECT * FROM high_salary_employees;
