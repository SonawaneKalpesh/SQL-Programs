CREATE TABLE Employee(
	EmpID INT,
	EmpName VARCHAR(50)
);

INSERT INTO Employee VALUES
	(101,'kalpesh'),
	(102, 'raj'),
	(103,'Om');

SELECT * FROM Employee;

UPDATE Employee
SET EmpName ='Kalpesh Sonawane'
WHERE EmpName='kalpesh';