CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    manager_id INT
);

INSERT INTO employees (employee_name, manager_id)
VALUES
    (   'Alice',	NULL),
    (	'Bob',	    1),
    (	'Carol',	1),
    (	'Dave',	2),
    (	'Eve',	    2),
    (	'Frank',	3);


with recursive employee_structure as (
    select employee_id,
           employee_name,
           manager_id,
           1 as level
    from employees
    where manager_id is null

    union all

    select e.employee_id,
             e.employee_name,
               e.manager_id,
               es.level + 1 as level
    from employees e
    inner join employee_structure es on
    es.employee_id = e.manager_id
)
select * from employee_structure;


----- challenge task

with recursive employee_structure as (
    select employee_id,
           employee_name,
           manager_id,
           0 as total_employees
    from employees
    where manager_id is null

    union all

    select e.employee_id,
             e.employee_name,
               e.manager_id,
               es.total_employees + 1 as total_employees
    from employees e
    inner join employee_structure es on
    es.employee_id = e.manager_id
)
select manager_id, sum(total_employees) as total_employees
 from employee_structure
 group by manager_id;