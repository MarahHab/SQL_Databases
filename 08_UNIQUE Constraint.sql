-- The following SQL defines a UNIQUE constraint for the "ID" column upon creation of the "Persons" table:

CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

--To name a UNIQUE constraint, and to define a UNIQUE constraint on multiple columns, use the following SQL syntax:
--constraint multiple columns
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);

--To create a UNIQUE constraint on the "ID" column when the table is already created, use the following SQL syntax:
ALTER TABLE Persons
ADD UNIQUE (ID);

-- To drop a UNIQUE constraint, use the following SQL:

ALTER TABLE Persons
DROP CONSTRAINT UC_Person;
