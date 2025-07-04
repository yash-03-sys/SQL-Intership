CREATE TABLE Employees (
  EmpID INT PRIMARY KEY,
  Name TEXT,
  Department TEXT,
  Salary INT);
CREATE TABLE Projects (
  ProjID INT PRIMARY KEY,
  EmpID INT,
  ProjectName TEXT,
  Budget INT,
  FOREIGN KEY (EmpID) REFERENCES Employees(EmpID));
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
CREATE VIEW HighSalaryEmployees AS
SELECT Name, Department, Salary
FROM Employees
WHERE Salary > 55000;
CREATE VIEW ProjectInfo AS
SELECT P.ProjectName, P.Budget, E.Name AS EmployeeName
FROM Projects P
JOIN Employees E ON P.EmpID = E.EmpID;
SELECT * FROM HighSalaryEmployees;
SELECT * FROM ProjectInfo
WHERE Budget > 60000;
DROP VIEW IF EXISTS HighSalaryEmployees;
DROP VIEW IF EXISTS ProjectInfo;
