import sqlite3
connection=sqlite3.connect("company.db")

#read sql file
# with open("database.sql","r") as file:
#     sql_script=file.read()

with open("command.sql","r") as file:
    sql_script=file.read()


#execute sql queries
connection.executescript(sql_script)


#fetch records
cursor=connection.cursor()
cursor.execute("SELECT * FROM users")

for row in cursor.fetchall():
    print(row)

connection.close()


