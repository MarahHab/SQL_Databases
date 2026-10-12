--Here, the CHECK constraint ensures that the "Age" column must have a value of 18, or above:

CREATE TABLE Persons (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age >= 18)
);

--To name a CHECK constraint, and to define a CHECK constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Persons (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT chk_PersonAge CHECK (Age >= 18 AND City = 'Sandnes')
);

--To name a CHECK constraint, and to define a CHECK constraint on multiple columns, use the following SQL syntax:

ALTER TABLE Persons
ADD CONSTRAINT chk_PersonAge CHECK (Age >= 18 AND City = 'Sandnes');

--Drop a CHECK Constraint
ALTER TABLE Persons
DROP CONSTRAINT chk_PersonAge;