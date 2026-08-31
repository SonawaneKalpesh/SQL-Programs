create table students(

  id serial primary key,
  name varchar(50),
  age INT,
  city varchar(50),
  marks INT,
  course varchar(50)
);

INSERT INTO students(name,age,city,marks,course) 
values
('Rahul',21,'Nashik',85,'Java'),
('Sneha',20,'Pune',92,'Python'),
('Amit',22,'Mumbai',65,'Java'),
('Priya',21,'Pune',78,'Python'),
('Rohit',23,'Nashik',55,'c++'),
('Neha',20,'Mumbai',88,'Java');

select * from students;

select * from students
where city='Pune';

select name,city from students
where city='Pune';

select * from students
where marks>80;

select * from students
where marks<80;

select name,city from students
where city<>'Pune';

select * from students
where marks>80 AND city='Pune';

select * from students
where marks>80 OR city='Pune';

select * from students
where marks>80 AND(city='Pune' OR city='Mumbai');

select * from students
where marks BETWEEN 70 AND 90;

select * from students
where marks>=70 AND marks<=90;

select * from students
where city='Pune' OR city='Mumbai' OR city='Nashik';

select * from students
where city IN('Pune','Mumbai','Nashik');

select * from students
where city NOT IN('Pune','Mumbai');

-- LIKE PATTERN
-- NAME START WITH R
select * from students
where name LIKE 'R%'

-- NAME END WITH a

select * from students
where name LIKE '%a'

---Name contain with "oh"
select * from students
where name LIKE '%oh%';

select * from students
where name LIKE 'R_hit';