
-- Task 5: SQL Joins (Inner, Left, Right, Full)

-- 1. Create Tables
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name TEXT,
  Email TEXT
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  Product TEXT,
  Amount REAL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- 2. Insert Sample Data
INSERT INTO Customers VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com'),
(3, 'Charlie', 'charlie@example.com');

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 800.00),
(102, 2, 'Mouse', 20.00),
(103, 1, 'Keyboard', 50.00),
(104, 4, 'Monitor', 150.00);  -- Note: CustomerID 4 doesn't exist in Customers

-- 3. INNER JOIN
SELECT Customers.Name, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 4. LEFT JOIN
SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 5. RIGHT JOIN (only in MySQL or supported databases)
SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 6. FULL OUTER JOIN (workaround using UNION)
SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
