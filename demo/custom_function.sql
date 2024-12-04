-- Create a function to calculate employee bonus based on their salary
CREATE FUNCTION calculate_bonus(employee_salary NUMERIC) RETURNS NUMERIC AS $$
BEGIN
    RETURN employee_salary * 0.10; -- 10% bonus
END;
$$ LANGUAGE plpgsql;

-- Use the function
SELECT first_name, last_name, calculate_bonus(salary) AS bonus
FROM employees;
