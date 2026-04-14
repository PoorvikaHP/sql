create database food;
use food;
CREATE TABLE users (user_id INT PRIMARY KEY,name VARCHAR(50),initial CHAR(1),gender ENUM('Male','Female','Other'),hobbies SET('Sports','Music','Reading'),age BIGINT,
    rating DOUBLE,is_active BOOLEAN,ted_date DATE);
INSERT INTO users VALUES(1, 'Ravi', 'R', 'Male', 'Music,Reading', 25, 4.5, TRUE, '2026-04-14');
select*from users;

CREATE TABLE items (item_id INT PRIMARY KEY,item_name VARCHAR(50),category CHAR(10),price decimal(10,2),
    quantity bigint,discount DOUBLE,available boolean,added_date DATE);
INSERT INTO items VALUES(101, 'Burger', 'FastFood', 99.99, 50, 10.5, TRUE, '2026-04-14');
select*from items;

CREATE TABLE orders (order_id INT PRIMARY KEY,user_id int,total_amount decimal(10,2),order_status enum('Pending','Shipped','Delivered'),
    items_count BIGINT,tax DOUBLE,is_paid BOOLEAN,order_date DATE);
INSERT INTO orders VALUES(1001, 1, 299.99, 'Pending', 3, 5.5, TRUE, '2026-04-14');
select*from orders;

create table cart (cart_id int primary key,user_id INT,item_id INT,tag char(4),quantity BIGINT,price DECIMAL(10,2),
    total double,selected boolean,added_date DATE);
insert into cart values(1, 1, 101, 'C001', 2, 99.99, 199.98, TRUE, '2026-04-14');
select*from cart;

 create table payment (payment_id int primary key,order_id int,ref_code CHAR(8),amount decimal(10,2),payment_mode enum('UPI','Card','Cash'),transaction_id BIGINT,
    charges double,success boolean,payment_date DATE);
insert into payment VALUES(5001, 1001, 'PAY00001', 299.99, 'UPI', 9876543210, 2.5, TRUE, '2026-04-14');
select*from payment;



