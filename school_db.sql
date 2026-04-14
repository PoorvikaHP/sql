create database school;
 use school;
create table students (student_id int, fees decimal(10,2), phone bigint, percentage double, grade char(1), name varchar(50), type enum('regular','hostel','day_scholar'),
 activities set('sports','music','arts'), admission_date date, active boolean);
 insert into students values (1, 20000.50, 9876543210, 85.5, 'a', 'rahul', 'regular', 'sports,music', '2026-01-10', true);
 select * from students;

create table teachers (teacher_id int, salary decimal(10,2), phone bigint, experience double, section char(2), name varchar(50), subject enum('math','science','english'),
 skills set('teaching','management','research'), join_date date, active boolean);
 insert into teachers values (101, 50000.75, 9123456780, 10.5, 't1', 'sharma', 'math', 'teaching,management', '2020-06-15', true);
 select * from teachers;

create table classes (class_id int, fees decimal(10,2), strength bigint, duration double, room char(3), class_name varchar(50), type enum('theory','practical'), 
facilities set('projector','lab','ac'), start_date date, active boolean); 
insert into classes values (201, 15000.00, 40, 6.5, 'r1', 'class 10', 'theory', 'projector,ac', '2026-02-01', true); 
select * from classes;

create table subjects (subject_id int, cost decimal(10,2), code bigint, hours double, section char(2), name varchar(50), type enum('core','elective'),
 resources set('books','notes','videos'), added_date date, available boolean); 
 insert into subjects values (301, 5000.00, 12345, 120.5, 's1', 'mathematics', 'core', 'books,notes', '2026-01-05', true);
 select * from subjects;

create table marks (mark_id int, total decimal(10,2), roll_no bigint, percentage double, grade char(1), subject_name varchar(50), result enum('pass','fail'),
 remarks set('good','average','poor'), exam_date date, passed boolean); 
 insert into marks values (401, 450.00, 1, 90.0, 'a', 'mathematics', 'pass', 'good', '2026-03-20', true); 
 select * from marks;