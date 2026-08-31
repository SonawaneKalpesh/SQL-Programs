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

select * from  students;

UPDATE students
SET marks=95
where id=1;


UPDATE students
SET city='Nashik'
where id=2;

UPDATE students
SET age =23,city='Nashik',marks=85
where id=3;


UPDATE students
SET age =23,city='Nashik',marks=85
where id=3;

update students
SET marks=marks+5
where id =4;

update students
SET marks=marks+5
where city ='Nashik';

update students
SET marks=marks+10
where marks<70;

update students
SET marks=marks+5
where city IN ('Pune','Nashik');

update students
SET city='Pune'
where name LIKE 'R%';

select * from  students;

delete from students
where id=4;

delete from students
where city='Mumbai';


delete from students
where marks<100;

update students SET marks=50;

delete from students;