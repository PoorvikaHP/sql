create database shop;
use shop;
create table products (product_id int,price decimal(10,2),stock_count bigint,weight double,grade char(1),name varchar(50),category enum('electronics','clothing','grocery'),
    tags set('new','sale','popular'),added_date date,available boolean);
insert into products values(1, 499.99, 1000, 1.5, 'a', 'laptop', 'electronics', 'new,popular', '2026-04-14', true);
select*from products;

create table customers (customer_id int,balance decimal(10,2),phone bigint,rating double,gender char(1),name varchar(50),
    type enum('regular','premium','vip'),erences set('email','sms','call'),join_date date,active boolean);
insert into customers values(101, 1500.50, 9876543210, 4.5, 'f', 'poorvika', 'premium', 'email,sms', '2026-01-10', true);
select*from customers;

create table orders (order_id int, total_amount decimal(10,2), quantity bigint, discount double, status_code char(2), product_name varchar(50),
 order_status enum('pending','shipped','delivered'), features set('giftwrap','fastdelivery'), order_date date, is_paid boolean); 
insert into orders values (5001, 999.99, 2, 50.0, 'ok', 'laptop', 'delivered', 'fastdelivery', '2026-04-10', true);
select*from orders;

create table billing (bill_id int, amount decimal(10,2), transaction_id bigint, tax double, currency char(3), method varchar(50), payment_mode enum('cash','card','upi'), 
extras set('discount','coupon'), bill_date date, success boolean); 
insert into billing values (9001, 1049.99, 123456789012, 50.0, 'inr', 'upi payment', 'upi', 'coupon', '2026-04-10', true);
select*from billing;

create table stock (stock_id int, cost decimal(10,2), units bigint, weight double, section char(2), product_name varchar(50), 
status enum('in_stock','out_of_stock','limited'), warehouse set('a','b','c'), updated_date date, available boolean); 
insert into stock values (3001, 300.00, 500, 1.2, 's1', 'laptop', 'in_stock', 'a,b', '2026-04-14', true);
select*from stock;
