
-- Task 6: Subqueries and Nested Queries

-- 1. Create Sample Tables
CREATE TABLE Employees (
  EmpID INT PRIMARY KEY,
  Name TEXT,
  Department TEXT,
  Salary INT
);

CREATE TABLE Projects (
  ProjID INT PRIMARY KEY,
  EmpID INT,
  ProjectName TEXT,
  Budget INT,
  FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);

-- 2. Insert Sample Data
INSERT INTO Employees VALUES
(1, 'Alice', 'IT', 60000),
(2, 'Bob', 'HR', 50000),
(3, 'Charlie', 'Finance', 55000),
(4, 'David', 'IT', 62000),
(5, 'Eva', 'HR', 48000);

INSERT INTO Projects VALUES
(101, 1, 'ERP Upgrade', 100000),
(102, 3, 'Audit Setup', 50000),
(103, 4, 'Network Revamp', 80000),
(104, 2, 'Recruitment Drive', 20000);

-- 3. Scalar Subquery
SELECT Name, Department, Salary
FROM Employees
WHERE Salary = (
  SELECT MAX(Salary)
  FROM Employees AS E
  WHERE E.Department = Employees.Department
);

-- 4. Correlated Subquery
SELECT Name, Department, Salary
FROM Employees AS E1
WHERE Salary > (
  SELECT AVG(Salary)
  FROM Employees AS E2
  WHERE E2.Department = E1.Department
);

-- 5. Subquery with IN
SELECT Name
FROM Employees
WHERE EmpID IN (
  SELECT EmpID
  FROM Projects
  WHERE Budget > 60000
);

-- 6. Subquery with EXISTS
SELECT Name
FROM Employees E
WHERE EXISTS (
  SELECT 1
  FROM Projects P
  WHERE P.EmpID = E.EmpID
);

-- 7. Subquery in FROM Clause (Derived Table)
SELECT Department, AVG_Salary
FROM (
  SELECT Department, AVG(Salary) AS AVG_Salary
  FROM Employees
  GROUP BY Department
) AS DeptAvg;
