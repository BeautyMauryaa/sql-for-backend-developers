-- Drop table if it already exists to avoid errors on re-runs
DROP TABLE IF EXISTS employees;

-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    email VARCHAR(100)
);

-- Insert sample records
INSERT INTO employees (employee_id, name, department, salary, email) VALUES
(1, 'Alice Smith', 'IT', 45000.00, 'alice@example.com'),
(2, 'Bob Jones', 'HR', 28000.00, 'bob@example.com'),
(3, 'Charlie Brown', 'Finance', 60000.00, NULL),
(4, 'Amanda White', 'IT', 32000.00, 'amanda@example.com'),
(5, 'David Lee', 'Marketing', 25000.00, 'david@example.com'),
(6, 'Aaron Davis', 'HR', 55000.00, 'aaron@example.com'),
(7, 'Eva Green', 'IT', 70000.00, NULL),
(8, 'Frank Miller', 'Finance', 18000.00, 'frank@example.com'),
(9, 'Grace Taylor', 'HR', 40000.00, 'grace@example.com'),
(10, 'Hank Wilson', 'Marketing', 22000.00, 'hank@example.com');