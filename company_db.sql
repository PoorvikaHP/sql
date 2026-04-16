create database company_db;
use company_db;
create table employees (emp_id int primary key,emp_name varchar(50) not null,email varchar(50) unique,salary decimal(10,2) check (salary > 10000),
join_date date default (current_date));
create table departments (dept_id int primary key,dept_name varchar(50) not null unique,location varchar(50) default 'bangalore');
create table projects (project_id int primary key,project_name varchar(50) not null,budget double check (budget > 0),status varchar(20) default 'ongoing');
create table attendance (att_id int primary key,emp_id int,att_date date not null,status varchar(10) check (status in ('present','absent')),foreign key (emp_id) references employees(emp_id));
create table payroll (pay_id int primary key,emp_id int unique,bonus decimal(8,2) default 0,tax decimal(8,2) check (tax >= 0),
    foreign key (emp_id) references employees(emp_id));
insert into employees values (2, 'anita', 'anita@gmail.com', 30000, default);
insert into departments values (101, 'hr', 'mumbai');
insert into projects values (202, 'web app', 200000, 'completed');
insert into attendance values (2, 2, '2026-04-15', 'absent');
insert into payroll values (1, 1, default, 2000);
select * from employees;
select * from departments;
select * from projects;
select * from attendance;
select * from payroll;
