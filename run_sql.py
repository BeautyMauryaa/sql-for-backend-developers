# import sqlite3
# connection=sqlite3.connect("company.db")

# #read sql file
# # with open("database.sql","r") as file:
# #     sql_script=file.read()

# with open("pract1.sql","r") as file:
#     sql_script=file.read()


# #execute sql queries
# connection.executescript(sql_script)


# #fetch records
# cursor=connection.cursor()
# cursor.execute(
#     #  "SELECT * FROM products"
#     # "SELECT * FROM users WHERE id=?",(2,)
#     # "SELECT * FROM products WHERE price>?",(1000,)
#     # "SELECT * FROM users WHERE age >=?",(23,)


# #MOST EXPENSIVE ORDER
# # """
# # SELECT product_name,price 
# # FROM products
# # ORDER BY price DESC
# # LIMIT 1;
# # """

# #ALL ORDERS PALCES BY USER_ID=1
# # """
# # SELECT * FROM orders
# # WHERE user_id=1;
# # """

# "SELECT * FROM users"

#                )

# for row in cursor.fetchall():
#     print(row)

# connection.close()



import sqlite3
connection=sqlite3.connect("company.db")

#read sql file
# with open("database.sql","r") as file:
#     sql_script=file.read()

with open("pract1.sql","r") as file:
    sql_script=file.read()


#execute sql queries
connection.executescript(sql_script)


#fetch records
cursor=connection.cursor()
cursor.execute(
    #  "SELECT * FROM products"
    # "SELECT * FROM users WHERE id=?",(2,)
    # "SELECT * FROM products WHERE price>?",(1000,)
    # "SELECT * FROM users WHERE age >=?",(23,)


#MOST EXPENSIVE ORDER
# """
# SELECT product_name,price 
# FROM products
# ORDER BY price DESC
# LIMIT 1;
# """

#ALL ORDERS PALCES BY USER_ID=1
# """
# SELECT * FROM orders
# WHERE user_id=1;
# """

"SELECT * FROM users"

               )

for row in cursor.fetchall():
    print(row)

connection.close()


