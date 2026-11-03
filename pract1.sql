DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

CREATE TABLE users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    age INTEGER CHECK (age >= 18),
    status VARCHAR(20) DEFAULT 'active'
);

CREATE TABLE products(
    id INTEGER PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    stock INTEGER DEFAULT 0
);

CREATE TABLE orders(
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    product_id INTEGER,
    amount DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO users (id, name, email, age)
VALUES
(1, 'Rahul', 'rahul@gmail.com', 24),
(2, 'Priya', 'priya@gmail.com', 22),
(3, 'Aman', 'aman@gmail.com', 25),
(4, 'Neha', 'neha@gmail.com', 21);

INSERT INTO products
VALUES
(101, 'Laptop', 55000, 10),
(102, 'Mouse', 500, 50),
(103, 'Keyboard', 1200, 30);

INSERT INTO orders
VALUES
(501, 1, 101, 55000),
(502, 1, 102, 500),
(503, 2, 103, 1200),
(504, 3, 102, 500);

-- SELECT * FROM users;
-- SELECT * FROM orders;
-- SELECT * FROM products;



-- DELETE FROM orders
-- WHERE id=504;


-- DELETE FROM orders
-- WHERE user_id=1;

-- DELETE FROM products;



UPDATE users
SET age=23
WHERE name='Priya';

-- Increase the stock of Mouse by 10
UPDATE products
SET stock=stock+10
WHERE products_name='Mouse';

--  Count the total number of users
SELECT COUNT (*) AS total_users
FROM users;

--Find products with stock less than 20

SELECT * FROM products 
WHERE stock < 20;

-- Find the total order amount for user 1
SELECT SUM(amount) AS total_amount 
FROM orders 
WHERE user_id = 1;                                                                            