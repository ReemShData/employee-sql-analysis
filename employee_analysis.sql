-- Project: Employee Performance Analysis
-- Tool: SQL (SQLite)

-- Step 1: Create Table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    id INTEGER,
    name TEXT,
    department TEXT,
    salary INTEGER,
    performance INTEGER,
    experience INTEGER
);


-- Step 2: Insert Data
INSERT INTO employees VALUES (1, 'Alice', 'Sales', 5000, 85, 3);
INSERT INTO employees VALUES (2, 'Bob', 'IT', 7000, 90, 5);
INSERT INTO employees VALUES (3, 'Carol', 'HR', 4500, 78, 2);
INSERT INTO employees VALUES (4, 'David', 'Sales', 5500, 92, 4);
INSERT INTO employees VALUES (5, 'Eva', 'IT', 8000, 88, 6);
INSERT INTO employees VALUES (6, 'Frank', 'HR', 4800, 70, 1);
INSERT INTO employees VALUES (7, 'Grace', 'Sales', 6000, 95, 7);
INSERT INTO employees VALUES (8, 'Henry', 'IT', 7500, 80, 4);
INSERT INTO employees VALUES (9, 'Iris', 'HR', 4600, 74, 5);
INSERT INTO employees VALUES (10, 'Jack', 'Sales', 5200, 88, 3);
INSERT INTO employees VALUES (11, 'Karen', 'IT', 7200, 93, 5);
INSERT INTO employees VALUES (12, 'Leo', 'HR', 4700, 76, 2);
INSERT INTO employees VALUES (13, 'Mia', 'Sales', 5800, 91, 6);
INSERT INTO employees VALUES (14, 'Noah', 'IT', 6800, 87, 4);
INSERT INTO employees VALUES (15, 'Olivia', 'HR', 4900, 82, 3);
INSERT INTO employees VALUES (16, 'Paul', 'Sales', 5100, 79, 2);
INSERT INTO employees VALUES (17, 'Quinn', 'IT', 7100, 94, 6);
INSERT INTO employees VALUES (18, 'Rose', 'HR', 4750, 71, 1);
INSERT INTO employees VALUES (19, 'Sam', 'Sales', 5600, 86, 5);
INSERT INTO employees VALUES (20, 'Tom', 'IT', 7800, 89, 7);

-- Step 3: Show All Data
SELECT * FROM employees;

-- Step 4: Average Salary by Department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;

-- Step 5: Total Employees by Department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- Step 6: Employees with Salary above 6000
SELECT name, salary, department
FROM employees
WHERE salary > 6000
ORDER BY salary DESC;

-- Step 7: Top Performers (performance >= 90)
SELECT name, performance, department
FROM employees
WHERE performance >= 90
ORDER BY performance DESC;

-- Step 8: Average Performance by Department
SELECT department, AVG(performance) AS avg_performance
FROM employees
GROUP BY department
ORDER BY avg_performance DESC;

-- Step 9: Top 5 Employees by Performance
SELECT name, salary, performance
FROM employees
ORDER BY performance DESC
LIMIT 5;
