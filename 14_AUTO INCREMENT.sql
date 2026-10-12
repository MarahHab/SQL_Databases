-- The following SQL defines the "Personid" column to be an auto-increment primary key field in the "Persons" table:
/*
CREATE TABLE Persons (
    Personid int AUTO_INCREMENT PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
*/


--To let AUTO_INCREMENT start with another value, use the following SQL statement:
/*
ALTER TABLE Persons AUTO_INCREMENT = 100;
*/

/*
The following SQL defines the "Personid" column to be an auto-increment primary key field in the "Persons" table:

CREATE TABLE Persons (
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
*/
