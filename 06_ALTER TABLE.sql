-- The following SQL adds an "Email" column to the "Customers" table:

ALTER TABLE Customers
ADD Email varchar(255);

-- The following SQL deletes the "Email" column from the "Customers" table:
ALTER TABLE Customers
DROP COLUMN Email;

--The following SQL modifies the size of the "Email" column to varchar(100), and we also add a NOT NULL constraint:
/*
ALTER TABLE Customers
MODIFY Email varchar(100) NOT NULL;
*/

--The following SQL renames the "Customers" table to "Clients":
/*
ALTER TABLE Customers
RENAME TO Clients;
*/

-- add a column named "DateOfBirth" in the "Persons" table.
ALTER TABLE Persons
ADD DateOfBirth date;

-- change the data type of the column named "DateOfBirth" in the "Persons" table.
ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;

--delete the column named "DateOfBirth" in the "Persons" table.

ALTER TABLE Persons
DROP COLUMN DateOfBirth;