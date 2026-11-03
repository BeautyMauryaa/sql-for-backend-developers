COUNT() - Counts records.
SELECT COUNT(*) AS total_users
FROM users;

SUM()
SELECT SUM(amount) AS total_revenue
FROM orders;

AVG()
SELECT AVG(salary) AS average_salary
FROM employees;

MIN()
SELECT MIN(price)
FROM products;


MAX()
SELECT MAX(price)
FROM products;

## GROUP BY and HAVING
- GROUP BY groups rows that have the same values in specified columns

SELECT user_id, SUM(amount) AS total_amount
FROM orders
GROUP BY user_id;

GROUP BY combines rows having the same user ID and calculates their totals.


### HAVING:
HAVING filters groups after GROUP BY.
SELECT user_id, SUM(amount) AS total_amount
FROM orders
GROUP BY user_id
HAVING SUM(amount) > 1000;





### DIFF BTW WHERE AND HAVING
- Filters individual rows
-	Filters groups

-Applied before grouping
-Applied after grouping

-Usually used before GROUP BY
-Usually used after GROUP BY

-Cannot directly filter aggregate results at the same query level
-Can filter aggregate results


SELECT user_id, SUM(amount) AS total_amount
FROM orders
WHERE amount >= 500
GROUP BY user_id
HAVING SUM(amount) > 1000;


Execution conceptually:
1. FROM – Identify source table.
2. WHERE – Filter rows.
3. GROUP BY – Create groups.
4. HAVING – Filter groups.
5. SELECT – Produce output.
6. ORDER BY – Sort results.
7. LIMIT/OFFSET – Restrict output.