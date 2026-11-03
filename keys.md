## primary key:
- column or combination of column that uniquely identifies each record in db table
ex user_id

CREATE TABLE users(
    user_id INT PRIMARY KEY,
)

UPDATE user
SET name=''
WHERE id=2;


## Foreign Key
- establish a relationship btw two table or more then two 

ex:
two table user and order
user.user_id - primary key
order.order_id - primary key
order.user_id - Foreign Key
user.order_id - FK


## UNIQUE KEY - not duplicate


## relationship
- one to one - ex one user one profile
- one to many - ex one user can have multiple order
many to many- ex a student can enroll in multiple courses, and one course can have multiple students
- to implement this we use junction table(also called bridge tabel)
- JUNCTION table stores the associations ntw two entities and represens a many-to-many relation ship 





