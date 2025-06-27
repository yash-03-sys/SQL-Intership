
-- Sample table creation
CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary REAL,
    bonus REAL
);

-- Inserting sample data
INSERT INTO employees (emp_id, name, department, salary, bonus) VALUES
(1, 'Alice', 'HR', 50000, 5000),
(2, 'Bob', 'HR', 60000, 6000),
(3, 'Charlie', 'IT', 80000, NULL),
(4, 'David', 'IT', 75000, 5000),
(5, 'Eve', 'Sales', 65000, 7000),
(6, 'Frank', 'Sales', NULL, NULL),
(7, 'Grace', 'IT', 90000, 9000);

-- 1. GROUP BY department with COUNT and AVG
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 2. COUNT(*) vs COUNT(column)
SELECT 
    COUNT(*) AS total_rows,
    COUNT(bonus) AS bonus_not_null
FROM employees;

-- 3. GROUP BY multiple columns (department and bonus)
SELECT department, bonus, COUNT(*) AS emp_count
FROM employees
GROUP BY department, bonus;

-- 4. Using ROUND on AVG salary
SELECT department, ROUND(AVG(salary), 2) AS avg_salary_rounded
FROM employees
GROUP BY department;

-- 5. Highest salary per department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 6. Default GROUP BY behavior (orders by group key)
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 7. SUM and AVG together
SELECT department, SUM(salary) AS total_salary, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 8. HAVING clause: departments with avg salary > 70000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 70000;

-- 9. Counting distinct values of bonus
SELECT COUNT(DISTINCT bonus) AS unique_bonus_values
FROM employees;

-- 10. List of all aggregate functions on salary
SELECT 
    SUM(salary) AS total_salary,
    AVG(salary) AS avg_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary,
    COUNT(salary) AS non_null_salary_count
FROM employees;
