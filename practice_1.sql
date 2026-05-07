create database sql_practice;
use sql_practice;

create table std1(id int,
name varchar(25),
address varchar(50));

create table college(name varchar(50),
branch varchar(50),
address varchar(50),
contact_number int);

create table subject(sub_id int,
sub_name varchar(25),
total_stud int);

create table marks(mark int,
std_name varchar(50),
grade varchar(10),
result varchar(20));

create table contact_details(phone_no int,
address varchar(50),
state varchar(50),
country varchar(100));

create table salary(name varchar(50),
salary_amt float,
status varchar(50));

create table attendance(roll_no int,
name varchar(20),
address varchar(20));

create table fees(student_id int,
course_id int,
status varchar(20));

create table course(course_id int,course_name varchar(50));

create table enrollment(std_id int,
std_name varchar(50),
course_id varchar(10));

create table department(dept_id int,
dept_name varchar(20),
std_enrollments int);

create table teacher_info(id int,
name varchar(20),
dept_id int,
course_id int,
salary float,
sub_name varchar(20),
address varchar(50));

create table faculty(id int,
name varchar(20),
staff_count int);

create table exams(exam_id int,
semester_name varchar(20),
sub_id int,
result varchar(10));

create table grade(exam_id int,
stud_id int,
result varchar(10));

create table practicals(sub_id int,
sub_name varchar(20),
marks int);

create table topper(stud_id int,
marks int,
grade varchar(10));

create table admissions(course_id int,
fees float,
dept_id int);

create table admission_type(name varchar(20),
fees float,
category varchar(20));

create table course_year(course_id int,
duration int,
enrollemnts int);

create table submissions(sub_id int,
course_id int,
status varchar(10));

create table timetables(timetable_id int,
course_id int,
sub_id int);

create table rooms(room_id int,
course_id int,
student_nos int);

create table books(book_id int,
book_name varchar(20),
sub_id int);

create table hostel(hostel_id int,
name varchar(20),
capacity int);

create table admins(admin_id int,
start_date date,
end_date date,
info varchar(50));


describe admins;
describe hostel;

select * from admissions;

select fees as course_fee from admissions;
select info as 'information' from admins;
describe std1;
select * from subject;
