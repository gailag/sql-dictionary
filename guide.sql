/*
Aggregate functions in SQL:
- COUNT
- SUM
- AVG

Commands for ETL:
- SELECT: pulls the data
- JOIN: select columns from multiple tables using a fk
- WHERE: specify what data
- ORDER BY: organizes a column in ASC or DESC
- GROUP BY: groups the result

DELETE vs TRUNCATE:
- DELETE: removes specific data from a table
- TRUNCATE: removes all rows without maintaining the table's structure
*/

/* Changing a column name*/
ALTER TABLE TableName
RENAME COLUMN OldColumnName TO NewColumnName;

/* Given a users table and neigborhoods table, return all neigborhoods with 0 users*/
SELECT n.name
FROM neigborhoods AS n
LEFT JOIN users AS u
  ON n.id = u.neigborhood_id
WHERE u.id IS NULL
