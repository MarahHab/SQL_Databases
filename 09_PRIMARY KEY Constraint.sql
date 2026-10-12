-- The following SQL creates a PRIMARY KEY on the "ID" column upon creation of the "Persons" table:

CREATE TABLE Persons (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

--PRIMARY KEY on Multiple Columns
CREATE TABLE Persons (
    ID int,
    LastName varchar(255),
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID, LastName)
);

--To define a named PRIMARY KEY constraint on multiple columns, use the following SQL syntax:

CREATE TABLE Persons (
    ID int,
    LastName varchar(255),
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY (ID, LastName)
);

--To create a PRIMARY KEY constraint on the "ID" column when the table already has been created, use the following SQL:

ALTER TABLE Persons
ADD PRIMARY KEY (ID);

--To define a named PRIMARY KEY constraint on multiple columns, use the following SQL syntax:

ALTER TABLE Persons
ADD CONSTRAINT PK_Person PRIMARY KEY (ID, LastName);

--Drop a PRIMARY KEY Constraint
ALTER TABLE Persons
DROP CONSTRAINT PK_Person;