## constraints:

- rules applied to table column to control what kind of data can be stored in a database

1. NOT NULL Constraint :

- collumn cannot store null value

name VARCHAR(100) NOT NULL
email VARCHAR(100) NOT NULL

EX- VALUES (1, NULL, 'rahul@gmail.com'); GIVE ERROR
BUT
VALUES (1,'', 'rahul@gmail.com'); DOESN'T GIVE ERROR

- empty string is allow

2. UNIQUE Constraint
   email VARCHAR(100) UNIQUE

3. CHECK Constraint

- ensure that values inserted into a column satisfy a specified condition
  ex age INT CHECK(age>=18)
  salary DECIMAL(10,2) CHECK (salary >= 0)
  balance DECIMAL(10,2) CHECK (balance >= 0)
  gender VARCHAR(20)
  CHECK (gender IN ('Male', 'Female', 'Other'))

price DECIMAL(10,2) CHECK (price > 0)


4. DEFAULT -
- automatically assigns a predefined value to a column when as INSERT statement doesn't provide a value

ex: status VARCHAR(20) DEFAULT 'active'
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

CREATE TABLE users (
    id INT PRIMARY KEY,

    name VARCHAR(100) NOT NULL,

    email VARCHAR(150) UNIQUE NOT NULL,

    age INT CHECK (age >= 18),

    status VARCHAR(20) DEFAULT 'active'
);
