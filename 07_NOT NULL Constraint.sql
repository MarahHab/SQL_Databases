-- The following SQL creates a "Persons" table, and ensures that the "ID", "LastName", and "FirstName" columns cannot accept NULL values:
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

--The following SQL adds a NOT NULL constraint on the "Age" column, after the "Persons" table is already created:

ALTER TABLE Persons
ALTER COLUMN Age int NOT NULL;

--Remove a NOT NULL Constraint
--To remove a NOT NULL constraint from a column (to let the column accept NULL values again), use the following syntax:
ALTER TABLE Persons
ALTER COLUMN Age int NULL;

