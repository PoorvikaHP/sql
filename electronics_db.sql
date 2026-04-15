create database electronics_db;
use electronics_db;
create table products (product_id int,product_name varchar(50),price int);
create table customers (customer_id int,customer_name varchar(50),city varchar(50));
create table orders (order_id int,product_id int,quantity int);
create table suppliers (supplier_id int,supplier_name varchar(50),country varchar(50));
create table payments (payment_id int,amount int,method varchar(20));

alter table products add brand varchar(50), add stock int, add category varchar(50);
alter table customers add email varchar(100), add phone varchar(15), add age int;
alter table orders add order_date date, add status varchar(20), add customer_id int;
alter table suppliers add phone varchar(15), add email varchar(100), add company varchar(50);
alter table payments add order_id int, add payment_date date, add status varchar(20);

alter table products drop column stock;
alter table customers drop column phone;
alter table orders drop column status;
alter table suppliers drop column phone;
alter table payments drop column status;


alter table products change product_name pname varchar(50);
alter table products change price product_price int;

alter table customers change customer_name cname varchar(50);
alter table customers change city location varchar(50);

alter table orders change quantity qty int;
alter table orders change order_date odate date;

alter table suppliers change supplier_name sname varchar(50);
alter table suppliers change country location varchar(50);

alter table payments change amount total_amount int;
alter table payments change method pay_method varchar(20);


alter table products modify product_price float;
alter table products modify brand varchar(100);

alter table customers modify cname varchar(100);
alter table customers modify location varchar(100);

alter table orders modify qty int;
alter table orders modify odate date;

alter table suppliers modify sname varchar(100);
alter table suppliers modify company varchar(100);

alter table payments modify total_amount float;
alter table payments modify pay_method varchar(30);

-- 4. insert data (15+ records, 4 methods)
-- method 1
insert into products values (1,'laptop',55000,'dell','electronics');
insert into products values (2,'mobile',20000,'samsung','electronics');
-- method 2
insert into products (product_id, pname, product_price, brand, category)
values (3,'tablet',15000,'lenovo','electronics');
-- method 3
insert into products values(4,'headphones',2000,'sony','accessories'),(5,'smartwatch',5000,'noise','wearable');
-- method 4 (other tables)
insert into customers values(1,'asha','chennai','asha@gmail.com',21),(2,'ravi','bangalore','ravi@gmail.com',25);
insert into orders values(101,1,2,'2025-04-01',1),(102,2,1,'2025-04-02',2);
insert into suppliers values(1,'techsupplier','india','tech@gmail.com','techcorp'),(2,'globalsupply','usa','global@gmail.com','global inc');
insert into payments values(1,110000,'card',101,'2025-04-03'),(2,20000,'upi',102,'2025-04-04');

update products set pname='gaming laptop',product_price=75000,brand='hp',category='electronics'where product_id=1;

delete from products where product_id=5;
delete from customers where customer_id=2;

select * from products;
select * from customers;
select * from orders;
select * from suppliers;
select * from payments;