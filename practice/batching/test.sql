INSERT INTO employees (employee_id, name, department_id)
VALUES
    (1, 'John Doe', 101),
    (2, 'Jane Smith', 102),
    (3, 'Alice Johnson', 103),
    (4, 'Bob Brown', 104);

UPDATE employees
SET salary = CASE employee_id
                WHEN 1 THEN 50000
                WHEN 2 THEN 55000
                WHEN 3 THEN 60000
                WHEN 4 THEN 65000
             END
WHERE employee_id IN (1, 2, 3, 4);