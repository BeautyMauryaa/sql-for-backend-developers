SELECT- retrive data (* means all columns)

WHERE - filter records based on  condtition
(filter before grouping and aggregation)


DISTINCT - remove duplicates (return unique value)
SELECT DISTINCT product
FROM orders;



## AND OR NOT
- both condition true - and
- at least one condition must be true- or
- not - reverse 



## IN,BETWEEN,LIKE
- IN - match multiple value(instead of writing multiple or condition)
-WHERE city = 'Delhi'
OR city = 'Mumbai'
OR city = 'Pune';

-SELECT *
FROM users
WHERE city IN ('Delhi', 'Mumbai', 'Pune');

SELECT *
FROM users
WHERE city NOT IN ('Delhi', 'Mumbai');

- between- range filtering
SELECT *
FROM users
WHERE city NOT IN ('Delhi', 'Mumbai');


equal to:

WHERE price >= 1000
AND price <= 5000;



- LIKE = pattern matching
 % = ZERO OR MORE CHAR
 _ = exactly one char



- LIKE matches text pattern
- INT checks whether a value matches one of the specified values



## ORDER BY,LIMIT,OFFSET
- sorting records
ASC = Smallest to largest (default).
DESC = Largest to smallest


SELECT * FROM employees
ORDER BY department ASC, salary DESC;


- LIMIT – Restrict number of records
SELECT * FROM products
LIMIT 5;
=Returns maximum 5 records.



-OFFSET – Skip records
SELECT * FROM users
LIMIT 5 OFFSET 10;
Skips the first 10 records and returns the next 5.

