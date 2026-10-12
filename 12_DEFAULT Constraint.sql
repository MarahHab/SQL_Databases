-- The following SQL sets a DEFAULT value for the "City" column upon creation of the "Persons" table:

CREATE TABLE Persons (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);

--To define a DEFAULT constraint on the "City" column when the table is already created, use the following SQL:
/*
ALTER TABLE Persons
ALTER City SET DEFAULT 'Sandnes';
*/

--Drop a DEFAULT Constraint
/*
ALTER TABLE Persons
ALTER City DROP DEFAULT;
*/