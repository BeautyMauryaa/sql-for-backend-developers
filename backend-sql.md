## database relationship:
- relationship define how records in two table are connected


## normalization
-process of organizing db tables to reduce duplicates data and prevent data anomalies

- 1nf 2nf 3nf

- normalization improve data integrity and reduce redundancy
-denormalization may improve read performance but introduces additional consistency and update complexity



### Indexing — How Indexes Work:
- data structure that helps the database find rows faster without scanning the entire table

### clustered and non clustered index
- organize table's row storage according to the index key


- non clustered index is a seperate structure that stores keys and references to the corresponding rows


### transaction:
- group db operation treated as one logical unit of work.

### acid:
- key properties of reliable database transactions.
-Atomicity - All operations succeed or none do. ex: Both transfer updates happen, or neither does

-Consistency - Transaction preserves database rules. ex: Balance and constraints remain valid

- Isolation - Concurrent transactions don't interfere incorrectly. ex: Two transfers don't corrupt account data

-Durability	- Committed data survives failures. ex: A committed transfer remains saved after a crash



### commit and rollback:
- commit : permanent commit the current transaction
BEGIN;

UPDATE users
SET balance = 5000
WHERE id = 1;

COMMIT;


-rollback: revert uuncommitted changes in the current transaction

BEGIN;

UPDATE users
SET balance = 0
WHERE id = 1;

ROLLBACK;


### SQL Injection and Prevention:
-SQL Injection occurs when untrusted user input is interpreted as part of an SQL command. We prevent it using prepared statements or parameterized queries, input validation, and appropriate database permissions.



### revision:
1:1 relationship	One record relates to one record


1:N relationship	One parent can have multiple child records

M:N relationship	Requires a junction table

1NF	Atomic values; no repeating groups

2NF	No partial dependency on a composite candidate key

3NF	No transitive dependency of non-key attributes

Index	Speeds up data retrieval; 
adds storage and write overhead

Clustered index	Organizes table rows around the index key

Non-clustered index	Separate index structure with row references
Transaction	Group of operations treated as one unit

ACID	Atomicity, Consistency, Isolation, Durability

COMMIT	Saves the transaction

ROLLBACK	Reverts uncommitted 
transaction changes

SQL Injection	Malicious input manipulates SQL

Parameterized query	Separates SQL instructions from input values

Connection pooling	Reuses database connections

Query optimization	Improves query execution efficiency