-- 1. Drop old tables first so we start clean
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS employees;

-- 2. Create the tables
CREATE TABLE IF NOT EXISTS employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    id INT,
    product VARCHAR(100),

    FOREIGN KEY (id)
    REFERENCES employees(id)
);

-- 3. Insert data
INSERT INTO employees VALUES
(1, 'Rahul', 'IT'),
(2, 'Priya', 'HR'),
(3, 'Aman', 'IT'),
(4, 'Neha', 'Sales');

INSERT INTO orders (order_id, id, product)
VALUES (101, 2, 'Keyboard');

-- 4. Update data
UPDATE employees
SET name = 'Mohan'
WHERE id = 1;

-- Delete employee whose ID is 3
-- DELETE FROM employees
-- WHERE id = 3;

-- SELECT * FROM employees;
-- Delete all records but preserve the table.

-- TRUNCATE TABLE employees;
-- DELETE FROM employees;
-- SELECT * FROM employees;

-- Write the command to remove the entire employees table.

-- python run_sql.py



--practical scenario
-- Imagine you are building an authentication system.
-- - we have three tables: users , user_profile, orders
-- Identify the keys:
-- - users.id → Primary Key.
-- - users.email → Unique Key.
-- - user_profiles.profile_id → Primary Key.
-- - user_profiles.user_id → Foreign Key + Unique constraint.
-- - orders.order_id → Primary Key.
-- - orders.user_id → Foreign Key.
-- This is how you should think as a backend developer: identify entities, their unique identifiers and their relationships.