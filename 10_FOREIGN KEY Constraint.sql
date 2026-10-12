--The following SQL creates a FOREIGN KEY constraint on the "PersonID" column upon creation of the "Orders" table:
CREATE TABLE Orders (
    OrderID int PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int,
    CONSTRAINT fk_Person
    FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);

--To create a FOREIGN KEY constraint on the "PersonID" column after the "Orders" table is created, use the following SQL:
ALTER TABLE Orders
ADD CONSTRAINT fk_Person
FOREIGN KEY (PersonID)
REFERENCES Persons(PersonID);

--To drop a FOREIGN KEY constraint, use the following SQL:
ALTER TABLE Orders
DROP CONSTRAINT fk_Person;