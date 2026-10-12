-- The following SQL creates a non-unique index named "idx_lastname" on the "LastName" column in the "Persons" table:
CREATE INDEX idx_lastname
ON Persons (LastName);

--If you want to create an index on a combination of columns, you can list the column names within the parentheses, separated by comma
CREATE INDEX idx_lname_fname
ON Persons (LastName, FirstName);

--DROP INDEX Statement
DROP INDEX table_name.index_name;