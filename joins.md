LEFT JOIN	All left records
RIGHT JOIN	All right records
FULL OUTER JOIN	All records from both
SELF JOIN	Join same table


JOIN combines data from multiple tables.

Subquery uses the result of one query inside another.


### UNION vs UNION ALL
- Combines results of multiple SELECT statements and removes duplicate rows.
- Combines results without removing duplicates.

### CASE WHEN
- used to apply conditional logic inside sql queries.
SELECT
    name,
    salary,
    CASE
        WHEN salary >= 50000 THEN 'High Salary'
        WHEN salary >= 30000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM employees;