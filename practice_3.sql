use practice;

create table employees (employee_id int,first_name varchar(30),last_name varchar(30),
gender varchar(10),date_of_birth date,email varchar(50),
contact_number varchar(20),hire_date date,department varchar(20),
job_role varchar(50),salary float,manager_id int,city varchar(50),
employment_status varchar(20),experience_years int);

insert into employees (employee_id,first_name,last_name,gender,date_of_birth,email,
contact_number,hire_date,department,job_role,salary,manager_id,city,employment_status,experience_years) values 
(101,'Manoj','Kumar','M','1998-07-03','manoj@gmail.com',87877979,'2023-04-14','IT','Data Engineer',40000,201,'Pune','Active',3),
(102,'Raj','Sharma','M','1995-10-05','raj@gmail.com',87999796,'2024-10-18','Sales','Sales Executive',20000,203,'Mumbai','Active',2),
(103,'Pragati','Joshi','F','1992-09-23','pragati@gmail.com',87987003,'2023-02-05','Admin','Admin Executive',22000,202,'Pune','Active',3),
(104,'Vishal','Naik','M','1998-02-18','vishal@gmail.com',77778788,'2025-10-19','IT','Data Scientist',50000,201,'Nashik','Active',1),
(105,'Shubham','Gupta','M','1999-12-30','shubham@gmail.com',99988782,'2022-12-09','Marketing','Marketing Analyst',15000,204,'Delhi','Resigned',4),
(106,'Preeti','Singh','F','1994-11-06','preeti@gmail.com',92345533,'2020-11-28','HR','HR Executive',30000,205,'Pune','Active',6),
(107,'Sakshi','Verma','F','2000-01-15','sakshi@gmail.com',86674543,'2019-10-03','IT','Software Developer',35000,201,'Nagpur','Resigned',7),
(108,'Dilip','Tiwari','M','1991-05-29','dilip@gmail.com',99999942,'2018-08-07','Finance','Accountant',26000,206,'Chennai','Active',8),
(109,'Sanket','Chaudhri','M','2001-08-12','sanket@gmail.com',77744539,'2022-06-17','Admin','Admin Executive',27000,202,'Mumbai','Active',4),
(110,'Sheetal','Kulkarni','F','1997-09-02','sheetal@gmail.com',85747477,'2023-12-25','Network','Network Engineer',30000,207,'Hyderabad','Active',3);

select * from employees;

-- WHERE CLAUSE --
select * from employees where employment_status='active';
select * from employees where experience_years>3;
select * from employees where manager_id=202;
select * from employees where salary >=25000;
select * from employees where salary <=25000;
select * from employees where department <> 'IT';
select * from employees where gender != 'F';
select * from employees where date_of_birth>'1999-01-01';

-- AND,OR,NOT --
select * from employees where city='Pune' and department='IT';
select * from employees where city='Mumbai' or gender='F';
select * from employees where NOT gender = 'M';
select * from employees where NOT employment_status='Active';

-- BETWEEN --
select * from employees where salary between 25000 and 30000;
select first_name,last_name,job_role from employees where hire_date between '2020-01-01' and '2023-01-01';
select * from employees where date_of_birth between '1997-01-01' and '1999-01-01';

-- LIKE --
select * from employees where first_name LIKE 'D%';
select * from employees where last_name LIKE '%A';
select * from employees where last_name LIKE '%rma%';
select * from employees where first_name LIKE '_a%';
select * from employees where last_name LIKE '%ri';
select * from employees where first_name LIKE '__n%';
select * from employees where last_name LIKE '%m_';
select * from employees where first_name NOT LIKE 'R';
select * from employees where last_name NOT LIKE '%a';
select * from employees where email LIKE '%@gmail.com';
select * from employees where department LIKE '_dmin';
select * from employees where job_role LIKE '%Executive%';
select * from employees where job_role NOT LIKE '%Executive%';

-- AGGREGATE FUNCTIONS --
select max(salary) as highest_salary from employees; 
select min(salary) as lowest_salary from employees; 
select max(hire_date) as latest_hire_date from employees; 
select min(hire_date) as old_hire_date from employees; 
select max(experience_years) as max_experience from employees;
select min(experience_years) as min_experience from employees;
select sum(salary) as total_salary from employees;
select avg(salary) as average_salary from employees;

select count(*) as total_rows from employees;
select count(employee_id) as total_rows from employees;
select count(gender) as total_females from employees where gender='F';
select count(gender) as total_males from employees where gender='M';
select count(salary) as count_salary1 from employees where salary<30000;
select count(salary) as count_salary2 from employees where salary>30000;
select distinct department from employees;
select count(distinct department) from employees;

-- IN, NOT IN --
select * from employees where department IN ('IT','Admin');
select * from employees where manager_id IN (202,205,206);
select * from employees where salary NOT IN (22000,35000);
select * from employees where employee_id NOT IN (102,103,104);

-- LIMIT gives first N rows and OFFSET skips first N rows and then prints --
select * from employees LIMIT 5;
select * from employees LIMIT 5 OFFSET 3; -- skips first 3 rows and then prints  5 rows 
select * from employees LIMIT 5 OFFSET 5;
select * from employees LIMIT 3,5; -- skips first 3 rows and then prints 5 rows --
select * from employees LIMIT 6,4; -- skips first 6 rows and then prints 4 rows --

-- ORDER BY --
select * from employees order by first_name;
select * from employees order by first_name desc;
select * from employees order by department;
select * from employees order by experience_years desc;