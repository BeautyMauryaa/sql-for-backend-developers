CREATE TABLE IF NOT EXISTS employees (
    id INT,
    name VARCHAR(100),
    department VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Rahul', 'IT'),
(2, 'Priya', 'HR'),
(3, 'Aman', 'IT'),
(4, 'Neha', 'Sales');


-- Delete employee whose ID is 3
-- DELETE FROM employees
-- WHERE id=3;

-- SELECT * FROM employees;
--Delete all records but preserve the table.

-- TRUNCATE TABLE employees;
DELETE FROM employees;
SELECT * FROM employees;

--Write the command to remove the entire employees table.

-- python run_sql.py