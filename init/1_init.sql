-- Create a table for employees
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary NUMERIC(10, 2)
);

-- Create a table for departments
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Create a table for employee activities (many-to-many relationship)
CREATE TABLE activities (
    activity_id SERIAL PRIMARY KEY,
    activity_name VARCHAR(100)
);

-- Create a link between employees and activities
CREATE TABLE employee_activities (
    employee_id INT REFERENCES employees(employee_id),
    activity_id INT REFERENCES activities(activity_id),
    PRIMARY KEY (employee_id, activity_id)
);
