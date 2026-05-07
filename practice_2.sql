create database practice;
use practice;

create table employee(id int,
name varchar(30),
department varchar(20),
salary int,
city varchar(30));

describe employee;

insert into employee(id,name,department,salary,city) values 
(101,'Ajay','IT',50000,'Mumbai'),
(102,'Manoj','IT',60000,'Pune'),
(103,'Vicky','Admin',50000,'Mumbai'),
(104,'Akshay','HR',40000,'Hyderabad'),
(105,'Sagar','Network',50000,'Nashik'),
(106,'Akshay','HR',50000,'Akola'),
(103,'Suraj','Admin',25000,'Pune');

insert into employee(id,name,department,salary,city) values 
(101,'Ajay','IT',50000,'Mumbai');
insert into employee(id,name,department,salary,city) values 
(108,'Raj',NULL,45000,'Chennai');

select * from employee;

-- Where Clause--
select * from employee where id=104;
select * from employee where city='Nashik';

-- AND,OR,NOT--
select * from employee where name='suraj' AND city='Pune';
select * from employee where name='suraj' OR city='Pune';
select * from employee where department='IT' AND salary>50000;
select * from employee where department='IT' OR salary>=50000;
select * from employee where NOT salary = 50000;
select * from employee where NOT city='Pune';
select * from employee where NOT name = 'Akshay';

select * from employee where salary>30000;
select * from employee where salary<=30000;

select * from employee where city <> 'Pune';
select * from employee where department != 'IT';
select * from employee where salary <> 50000;

-- distinct--
select distinct * from employee;
select distinct name from employee;
select distinct name, salary from employee;
select distinct salary from employee;
select distinct department from employee;

-- count --
select count(*) from employee; -- Counts all rows including NULLs --
select count(id) as total_rows from employee;
select count(department) as total_dept from employee; -- Counts only non-null values in that column --

-- IN and NOT IN --
select * from employee where salary NOT IN (25000,50000);
select * from employee where city IN ('Pune','Mumbai');
select * from employee where department NOT IN ('IT','Admin');
select * from employee where name IN ('Akshay','Sagar');

