SELECT department, AVG(salary)
FROM employees
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY AVG(salary) DESC
LIMIT 5;


SQL Query Execution Order
1
FROM / JOIN
Identify source tables and combine records


2
WHERE
Filter individual rows


3
GROUP BY
Create groups


4
HAVING
Filter groups


5
SELECT
Calculate and select output columns


6
DISTINCT
Remove duplicate result rows


7
ORDER BY
Sort the results


8
LIMIT / OFFSET
Restrict and paginate results