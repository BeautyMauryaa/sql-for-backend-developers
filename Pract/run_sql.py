

import sqlite3

# Connect to SQLite database
connection = sqlite3.connect("company.db")

# Read and execute the SQL script to set up the table and sample data
with open("emp-table.sql", "r") as file:
    sql_script = file.read()

connection.executescript(sql_script)
connection.commit()

cursor = connection.cursor()

# Run the query to find employees whose names start with 'A'
# query = "SELECT * FROM employees WHERE name LIKE 'A%';"

# # Fetch employees whose salary is between 20,000 and 50,000.
# query = "SELECT * FROM employees WHERE salary BETWEEN 20000 AND 50000;"

# Display all unique departments from the employees table.
# query ="SELECT DISTINCT department FROM employees";


# Retrieve the top 5 highest-paid employees.
# query ="SELECT * FROM employees ORDER BY salary DESC LIMIT 5"

# Display employees in descending order of salary.
# query="SELECT * FROM employees ORDER BY salary DESC"

# Find employees whose email address is NULL.
# query= "SELECT * FROM employees WHERE email IS NULL"


# Update the salary of an employee whose ID is 5
# query ="UPDATE employees SET salary=35000.00 WHERE employee_id=5"

# Delete an employee whose ID is 10.
# query ="DELETE FROM employees WHERE employee_id=10"

# Count the total number of employees.
query="SELECT COUNT(*) AS total_employees FROM employees"
# queryprint="SELECT * FROM employees"

cursor.execute(query)
# cursor.execute(queryprint)

print("--- Employees whose names start with 'A' ---")
for row in cursor.fetchall():
    print(row)

connection.close()