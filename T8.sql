
-- Task 8: Stored Procedures and Functions

-- 1. Create a sample table
CREATE TABLE Employees (
  EmpID INT PRIMARY KEY,
  Name TEXT,
  Salary INT
);

INSERT INTO Employees VALUES
(1, 'Alice', 60000),
(2, 'Bob', 50000),
(3, 'Charlie', 55000);

-- 2. Stored Procedure: Increase salary by percentage
DELIMITER //
CREATE PROCEDURE IncreaseSalary(
  IN emp_id INT,
  IN percent_increase INT
)
BEGIN
  UPDATE Employees
  SET Salary = Salary + (Salary * percent_increase / 100)
  WHERE EmpID = emp_id;
END;
//
DELIMITER ;

-- 3. Function: Get annual salary
DELIMITER //
CREATE FUNCTION GetAnnualSalary(emp_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE annual_salary INT;
  SELECT Salary * 12 INTO annual_salary
  FROM Employees
  WHERE EmpID = emp_id;
  RETURN annual_salary;
END;
//
DELIMITER ;

-- 4. Calling the procedure
CALL IncreaseSalary(2, 10);

-- 5. Using the function
SELECT GetAnnualSalary(1) AS AnnualSalary;
