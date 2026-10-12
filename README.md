**SQL DATABASE**
----------------------------------------

1. *CREATE DATABASE* - used to create a new SQL database.
Syntax :
```
CREATE DATABASE database_name;
```

2. *DROP DATABASE* -  used to permanently delete an existing SQL database.
Note: Be careful before dropping a database! Dropping a database deletes the database and all its content (tables, views, stored procedures, and data)!
Syntax :
```
DROP DATABASE databasename;
```

3. *BACKUP DATABASE* - used in SQL Server to create a **full backup** of an existing SQL database.

Syntax:
```
BACKUP DATABASE databasename
TO DISK = 'filepath';
```

4. *BACKUP WITH DIFFERENTIAL* -  in SQL means creating a backup that saves only the changes made since the last full backup.

* Simple example
Imagine you have a database:

- Sunday: You create a full backup of the entire database.
- Monday: You add 10 new customers.
- Tuesday: You add 5 more customers and create a differential backup.

The Tuesday differential backup contains all changes made since Sunday's full backup — both Monday's and Tuesday's changes.

Syntax :
```
BACKUP DATABASE MyDatabase
TO DISK = file_path
WITH DIFFERENTIAL;
```
** Tip: A differential backup reduces the backup time (since only the changes are backed up).

5. *CREATE TABLE* - used to create a new table in a database.
Syntax :
```
CREATE TABLE table_name (
  column1 datatype constraint,
  column2 datatype constraint,
  column3 datatype constraint,
  ....
);
```
6. *Create New Table From Existing Table* - used to create a new table that copies some/all data from an existing table.

Syntax :
```
CREATE TABLE new_table AS
SELECT column1, column2,...
FROM existing_table
WHERE ....;
```
7. *DROP TABLE * - used to permanently delete an existing table in a database.

Note: Be careful before dropping a table! Dropping a table deletes the entire table and all its content!

Syntax : 
```
DROP TABLE table_name;
```

To prevent an error from occur (if the table does not exists), it is a good practice to add the IF EXISTS clause:
```
DROP TABLE IF EXISTS table_name;
```

8. *TRUNCATE TABLE* -  used to delete all the records in a table, but it keeps the table structure, columns and constraints.

Syntax :
```
TRUNCATE TABLE table_name;
```

9. *ALTER TABLE* -  is used to add, delete, or modify columns in an existing table.
Common ALTER TABLE operations are:

- Add column - Adds a new column to a table
syntax:
```
ALTER TABLE table_name
ADD column_name datatype;
```
- Drop column - Deletes a column in a table
Syntax :
```
ALTER TABLE table_name
DROP COLUMN column_name;
```
- Rename column - Renames a column.
Syntax :
```
ALTER TABLE table_name
RENAME COLUMN old_name to new_name;
```
- Modify column - Changes the data type, size, or constraints of a column
Syntax:
```
ALTER TABLE table_name
ALTER COLUMN column_name new_datatype constraint;
```
- Add constraint - Adds a new constraint.

Syntax:
```
ALTER TABLE table_name
ADD CONSTRAINT constraint_name constraint_definition;
```
- Rename table - Renames a table
Syntax :
```
ALTER TABLE table_name
RENAME TO new_table_name;
```