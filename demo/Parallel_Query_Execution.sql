-- Enable parallel query execution for a specific session
SET max_parallel_workers_per_gather = 4;

-- Example of a query that might benefit from parallel execution
SELECT e.first_name, e.last_name, SUM(e.salary)
FROM employees e
GROUP BY e.department_id;