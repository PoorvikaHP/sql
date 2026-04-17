create database software_db;
use software_db;
create table developers (dev_id int primary key,name varchar(50),age int,gender varchar(10),experience int,
primary_language varchar(50),join_date date);
insert into developers values
(1,'Aman',24,'Male',2,'Java','2023-01-10'),
(2,'Riya',25,'Female',3,'Python','2023-02-15'),
(3,'Kiran',27,'Male',5,'C++','2023-03-20'),
(4,'Sneha',26,'Female',4,'JavaScript','2023-04-12'),
(5,'Arjun',28,'Male',6,'Java','2023-05-18'),
(6,'Pooja',23,'Female',1,'Python','2023-06-10'),
(7,'Rahul',30,'Male',7,'Go','2023-07-11'),
(8,'Neha',25,'Female',3,'C#','2023-08-09'),
(9,'Vikas',31,'Male',8,'Java','2023-09-05'),
(10,'Anjali',26,'Female',4,'Python','2023-10-01'),
(11,'Rohit',27,'Male',5,'JavaScript','2023-10-15'),
(12,'Divya',28,'Female',6,'C++','2023-11-20'),
(13,'Manoj',32,'Male',9,'Go','2023-12-01'),
(14,'Kavya',24,'Female',2,'Java','2023-12-10'),
(15,'Suresh',33,'Male',10,'Python','2023-12-15');

create table projects (project_id int primary key,project_name varchar(50),domain varchar(50),start_date date,
end_date date,budget double,status varchar(20));
insert into projects values
(1,'EcommerceApp','Web','2023-01-01','2023-06-01',100000,'Completed'),
(2,'BankingSystem','Finance','2023-02-01','2023-07-01',120000,'Ongoing'),
(3,'ChatApp','Communication','2023-03-01','2023-08-01',150000,'Ongoing'),
(4,'HealthTracker','Healthcare','2023-04-01','2023-09-01',130000,'Completed'),
(5,'FoodDelivery','Web','2023-05-01','2023-10-01',110000,'Ongoing'),
(6,'RideBooking','Transport','2023-06-01','2023-11-01',160000,'Ongoing'),
(7,'EduPlatform','Education','2023-07-01','2023-12-01',140000,'Completed'),
(8,'SocialMedia','Web','2023-08-01','2024-01-01',170000,'Ongoing'),
(9,'AIChatbot','AI','2023-09-01','2024-02-01',200000,'Ongoing'),
(10,'CloudStorage','Cloud','2023-10-01','2024-03-01',220000,'Ongoing'),
(11,'GameApp','Gaming','2023-11-01','2024-04-01',210000,'Ongoing'),
(12,'VideoStreaming','Media','2023-12-01','2024-05-01',180000,'Ongoing'),
(13,'SmartHome','IoT','2024-01-01','2024-06-01',230000,'Ongoing'),
(14,'CryptoWallet','Finance','2024-02-01','2024-07-01',250000,'Ongoing'),
(15,'JobPortal','Web','2024-03-01','2024-08-01',300000,'Ongoing');

create table technologies (tech_id int primary key,tech_name varchar(50),type varchar(50),version varchar(20),release_year int,vendor varchar(50),license varchar(20));
insert into technologies values
(1,'Java','Backend','17',2021,'Oracle','Paid'),
(2,'Python','Backend','3.10',2022,'PSF','Free'),
(3,'React','Frontend','18',2022,'Meta','Free'),
(4,'Angular','Frontend','15',2023,'Google','Free'),
(5,'NodeJS','Backend','18',2023,'OpenJS','Free'),
(6,'Docker','DevOps','24',2023,'Docker Inc','Free'),
(7,'Kubernetes','DevOps','1.28',2023,'CNCF','Free'),
(8,'MySQL','Database','8',2022,'Oracle','Free'),
(9,'MongoDB','Database','6',2023,'MongoDB Inc','Free'),
(10,'AWS','Cloud','2023',2023,'Amazon','Paid'),
(11,'Azure','Cloud','2023',2023,'Microsoft','Paid'),
(12,'GCP','Cloud','2023',2023,'Google','Paid'),
(13,'Flutter','Mobile','3',2023,'Google','Free'),
(14,'Swift','Mobile','5',2022,'Apple','Paid'),
(15,'Kotlin','Mobile','1.9',2023,'JetBrains','Free');

create table clients (client_id int primary key,client_name varchar(50),industry varchar(50),contact_person varchar(50),email varchar(50),
phone bigint,country varchar(50));
insert into clients values
(1,'ABC Corp','Ecommerce','Raj','raj@abc.com',9876543210,'India'),
(2,'FinTech Ltd','Finance','Meena','meena@fin.com',9876543211,'USA'),
(3,'HealthPlus','Healthcare','Arun','arun@health.com',9876543212,'UK'),
(4,'EduWorld','Education','Priya','priya@edu.com',9876543213,'India'),
(5,'Foodies','Food','Kiran','kiran@food.com',9876543214,'Canada'),
(6,'RideNow','Transport','Sita','sita@ride.com',9876543215,'USA'),
(7,'GameZone','Gaming','Ramesh','ramesh@game.com',9876543216,'Japan'),
(8,'CloudNet','Cloud','Ajay','ajay@cloud.com',9876543217,'Germany'),
(9,'SocialHub','Media','Nina','nina@social.com',9876543218,'India'),
(10,'SecurePay','Finance','Vani','vani@pay.com',9876543219,'USA'),
(11,'StreamX','Media','Deepak','deepak@stream.com',9876543220,'UK'),
(12,'HomeTech','IoT','Lata','lata@home.com',9876543221,'India'),
(13,'CryptoX','Finance','Karthik','karthik@crypto.com',9876543222,'USA'),
(14,'Jobify','HR','Anu','anu@job.com',9876543223,'Canada'),
(15,'TravelGo','Travel','Ravi','ravi@travel.com',9876543224,'India');

create table developer_projects (id int primary key,dev_id int,project_id int,role varchar(50),
foreign key(dev_id) references developers(dev_id),foreign key(project_id) references projects(project_id));
insert into developer_projects values
(1,1,1,'Backend Dev'),
(2,2,2,'Frontend Dev'),
(3,3,3,'Full Stack'),
(4,4,4,'Tester'),
(5,5,5,'Team Lead');

create table project_technologies (id int primary key,project_id int,tech_id int,usage_type varchar(50),
foreign key(project_id) references projects(project_id),foreign key(tech_id) references technologies(tech_id));
insert into project_technologies values
(1,1,1,'Backend'),
(2,2,2,'Backend'),
(3,3,3,'Frontend'),
(4,4,4,'Frontend'),
(5,5,5,'Backend');

create table project_clients (id int primary key,project_id int,client_id int,status varchar(20),
foreign key(project_id) references projects(project_id),foreign key(client_id) references clients(client_id));
insert into project_clients values
(1,1,1,'Active'),
(2,2,2,'Active'),
(3,3,3,'Pending'),
(4,4,4,'Completed'),
(5,5,5,'Active');

create table developer_salary (id int primary key,dev_id int,salary double,bonus double,foreign key(dev_id) references developers(dev_id));
insert into developer_salary values
(1,1,40000,2000),
(2,2,42000,1500),
(3,3,50000,2500),
(4,4,45000,1800),
(5,5,60000,3000);