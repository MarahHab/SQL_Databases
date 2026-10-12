--The following SQL creates a view named "Brazil Customers", that shows all customers from Brazil:

CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';
GO

--creates a view named "Products Above Average Price", that selects all products in the "Products" table with a Price higher than the average price:

CREATE VIEW [Products Above Average Price] AS
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);
