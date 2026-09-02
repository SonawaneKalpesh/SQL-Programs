CREATE DATABASE college;
USE college;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT
);

INSERT INTO students VALUES
(1, 'Rahul', 10),
(2, 'Priya', 20),
(3, 'Amit', 10),
(4, 'Sneha', 30),
(5, 'Karan', 50);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(10, 'Computer'),
(20, 'IT'),
(30, 'Mechanical'),
(40, 'Civil');

SELECT
    s.student_id,
    s.student_name,
    d.dept_name
FROM students s
INNER JOIN departments d
ON s.dept_id = d.dept_id;

SELECT
    s.student_id,
    s.student_name,
    d.dept_name
FROM students s
LEFT JOIN departments d
ON s.dept_id = d.dept_id;

SELECT
    s.student_id,
    s.student_name,
    d.dept_name
FROM students s
RIGHT JOIN departments d
ON s.dept_id = d.dept_id;

SELECT
    s.student_id,
    s.student_name,
    d.dept_name
FROM students s
FULL OUTER JOIN departments d
ON s.dept_id = d.dept_id;

SELECT
    s.student_id,
    s.student_name,
    d.dept_name
FROM students s
LEFT JOIN departments d
ON s.dept_id = d.dept_id

UNION

SELECT
    s.student_id,
    s.student_name,
    d.dept_name
FROM students s
RIGHT JOIN departments d
ON s.dept_id = d.dept_id;

SELECT
    s.student_name,
    d.dept_name
FROM students s
CROSS JOIN departments d;

SELECT
    s.student_name,
    d.dept_name
FROM students s
INNER JOIN departments d
ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Computer';

SELECT
    d.dept_name,
    COUNT(s.student_id) AS total_students
FROM departments d
LEFT JOIN students s
ON d.dept_id = s.dept_id
GROUP BY d.dept_name;

SELECT
    d.dept_name,
    COUNT(s.student_id) AS total_students
FROM departments d
INNER JOIN students s
ON d.dept_id = s.dept_id
GROUP BY d.dept_name
HAVING COUNT(s.student_id) > 1;

SELECT
    d.dept_name,
    COUNT(s.student_id) AS total_students
FROM departments d
INNER JOIN students s
ON d.dept_id = s.dept_id
GROUP BY d.dept_name
HAVING COUNT(s.student_id) > 0
ORDER BY total_students DESC;

SELECT
    s.student_name,
    d.dept_name
FROM students s
INNER JOIN departments d
ON s.dept_id = d.dept_id
ORDER BY s.student_name ASC;

SELECT
    s.student_name,
    d.dept_name
FROM students s
INNER JOIN departments d
ON s.dept_id = d.dept_id
ORDER BY s.dept_id DESC;