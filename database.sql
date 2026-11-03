-- consider an application with a db named company_db
-- database=> collection of organized in rows and columns
-- schema=> structure/defination of database object
-- row => one complete record
-- col=> one attribute of a record




-- Create employees table
CREATE TABLE IF NOT EXISTS employees (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INTEGER
);

-- Insert sample data
INSERT INTO employees (id, name, department, salary)
VALUES
(1, 'Rahul', 'IT', 50000),
(2, 'Priya', 'HR', 40000),
(3, 'Amit', 'Finance', 45000);


-- Fetch all employees
SELECT * FROM employees;


-- backend connection = user registers on your application
-- INSERT INTO users (name, email)
-- VALUES ('Rahul', 'rahul@gmail.com');