-- -- ddl
-- DROP TABLE IF EXISTS users;
-- CREATE TABLE IF NOT EXISTS users(
--     it INT,
--     name VARCHAR(100)
-- );

-- --dml
-- INSERT INTO users VALUES (1, 'Rahul');

-- UPDATE users
-- SET name = 'Aman'
-- WHERE id = 1;

-- DELETE FROM users
-- WHERE id = 1;


-- --dql
-- SELECT * FROM users;

-- --dcl
-- GRANT SELECT ON users TO employee;
-- REVOKE SELECT ON users FROM employee;

-- --tcl
-- BEGIN;

-- UPDATE accounts
-- SET balance = balance - 500
-- WHERE id = 1;

-- COMMIT;


-- DDL
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT,
    name VARCHAR(100)
);

-- DML
INSERT INTO users (id, name) VALUES (1, 'Rahul');

UPDATE users
SET name = 'Aman'
WHERE id = 1;

-- DQL
SELECT * FROM users;