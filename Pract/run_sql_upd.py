import sqlite3

# Connect to SQLite database
connection = sqlite3.connect("company.db")

# Read and execute the SQL script to set up the table and sample data
with open("emp-table-updated.sql", "r") as file:
    sql_script = file.read()

connection.executescript(sql_script)
connection.commit()

cursor = connection.cursor()

# 1. Find the highest salary in the employees table
# query="SELECT MAX(salary) AS highest_salary FROM employees";

# Find the lowest salary in the employees table
# query="SELECT MIN(salary) AS lowest_salary FROM employees"

# Calculate the average salary of all employees
# query="SELECT AVG(salary) AS avg_salary FROM employees"

# Find the total salary paid to all employees
# query="SELECT SUM(salary) AS total_salary FROM employees"

# Count the number of employees in each department
# query="SELECT department, COUNT(*) AS employee_count FROM employees GROUP BY department;"

# Find the average salary of each department
# query="SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department"

# Find departments having more than 5 employees
# query="SELECT department, COUNT(*) AS employee_count FROM employees GROUP BY department HAVING COUNT(*)>5"

# Find departments where the average salary is greater than 40,000
# query="SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department HAVING AVG(salary)>40000"

# Find the maximum salary in each department
query="SELECT department, MAX(salary) AS max_salary FROM employees GROUP BY department"


# queryprint="SELECT * FROM employees"
cursor.execute(query)
# cursor.execute(queryprint)

print("--- Employees whose names start with 'A' ---")
for row in cursor.fetchall():
    print(row)

connection.close()