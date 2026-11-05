DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    email VARCHAR(100),
    hire_date DATE
);

INSERT INTO employees (employee_id, name, department, salary, email, hire_date) VALUES
(1, 'Alice Smith', 'IT', 45000.00, 'alice@example.com', '2021-03-15'),
(2, 'Bob Jones', 'HR', 28000.00, 'bob@example.com', '2022-06-10'),
(3, 'Charlie Brown', 'Finance', 60000.00, NULL, '2020-01-20'),
(4, 'Amanda White', 'IT', 32000.00, 'amanda@example.com', '2023-01-10'),
(5, 'David Lee', 'Marketing', 25000.00, 'david@example.com', '2021-11-05'),
(6, 'Aaron Davis', 'HR', 55000.00, 'aaron@example.com', '2019-07-22'),
(7, 'Eva Green', 'IT', 70000.00, NULL, '2022-02-14'),
(8, 'Frank Miller', 'Finance', 18000.00, 'frank@example.com', '2023-05-19'),
(9, 'Grace Taylor', 'HR', 40000.00, 'grace@example.com', '2020-09-30'),
(10, 'Hank Wilson', 'Marketing', 22000.00, 'hank@example.com', '2021-08-12');