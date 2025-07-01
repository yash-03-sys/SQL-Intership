CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name TEXT,
  Email TEXT);
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  Product TEXT,
  Amount REAL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));
INSERT INTO Customers VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com'),
(3, 'Charlie', 'charlie@example.com');
INSERT INTO Orders VALUES
(101, 1, 'Laptop', 800.00),
(102, 2, 'Mouse', 20.00),
(103, 1, 'Keyboard', 50.00),
(104, 4, 'Monitor', 150.00);
SELECT Customers.Name, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
