-- The following example creates a table named "Persons" with five columns:

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

/*
Example Explained:
PersonID - This column is of type integer (int). This is also the PRIMARY KEY field, that uniquely identifies each row.
LastName - This column is a variable-length character string with a maximum length of 255 characters (varchar(255)). NOT NULL specifies that this column cannot be empty.
FirstName, Address, City - These columns are also variable-length character strings with a maximum length of 255 characters (varchar(255)). These columns allow NULL values by default.
*/


-- The following SQL creates a new table called "GermanCustomers" (which is a copy of the "Customers" table): 
/*
CREATE TABLE GermanCustomers AS
SELECT * FROM Customers
WHERE Country = 'Germany';
*/