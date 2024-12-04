CREATE TABLE employees_partitioned (
    employee_id SERIAL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary NUMERIC(10, 2),
    department_id INT,
    hire_date DATE NOT null,
    PRIMARY KEY(employee_id, hire_date)
) PARTITION BY RANGE (hire_date);

CREATE TABLE employees_2020 PARTITION OF employees_partitioned
FOR VALUES FROM ('2020-01-01') TO ('2021-01-01');

CREATE TABLE employees_2021 PARTITION OF employees_partitioned
FOR VALUES FROM ('2021-01-01') TO ('2022-01-01');

CREATE TABLE employees_2022 PARTITION OF employees_partitioned
FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

--each of the value will be in it's own partitioning according to hire_date
INSERT INTO employees_partitioned (first_name, last_name, salary, department_id, hire_date)
VALUES ('John', 'Doe', 50000, 1, '2021-06-15'),
       ('Jane', 'Smith', 70000, 2, '2020-12-20'),
       ('Alice', 'Brown', 60000, 1, '2022-03-01');
