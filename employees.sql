CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES
(1, 'Raj', 'IT', 50000),
(2, 'Priya', 'HR', 40000),
(3, 'Amit', 'IT', 60000),
(4, 'Neha', 'Sales', 45000),
(5, 'Rohit', 'IT', 55000);

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY employee_count DESC;