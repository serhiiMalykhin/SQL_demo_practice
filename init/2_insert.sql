-- Insert some departments
INSERT INTO departments (department_name) VALUES ('HR'), ('IT'), ('Sales');

-- Insert some employees
INSERT INTO employees (first_name, last_name, department_id, salary)
VALUES
('John', 'Doe', 1, 50000),
('Jane', 'Smith', 2, 60000),
('Alice', 'Johnson', 3, 55000);

-- Insert some activities
INSERT INTO activities (activity_name) VALUES ('Interviewing'), ('Coding'), ('Sales Meeting');

-- Link employees with activities
INSERT INTO employee_activities (employee_id, activity_id) VALUES
(1, 1), (2, 2), (3, 3),
(1, 2), (2, 3), (3, 1);
