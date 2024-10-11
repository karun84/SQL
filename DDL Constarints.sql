create database Sales;
use sales;

create table orders(order_id int primary key, customer_name varchar(25) not null unique,
product_category varchar(25), ordered_item varchar(25), contact_no varchar(10) unique);
desc orders;
select * from orders;
#1st question
alter table orders add order_quantity int;

#2nd question
rename table orders to sales_order;
select * from sales_order;

#3rd question
insert into sales_order values(101,'Charlotte','Electronics','Smartphone','8462135791',2),
(102,'Angela','Appliances','Microwave','2468135795',8),(103,'Amelia','Electronics','Laptop','7896451235',8),
(104,'Jacob','Clothes','Shirt','4568791234',10),
(105,'John','Appliances','Fridge','8476124983',12),(106,'Larry','Clothes','Jeans','5461335791',25),
(107,'Edward','Electronics','Smartphone','8462148973',20),(108,'Marco','Clothes','T-Shirt','7643135791',30),
(109,'Charles','Appliances','Washing Machine','4536789125',6),(110,'Shogun','Electronics','Smartphone','1236489756',30);

select * from sales_order;

#4th question
select customer_name, ordered_item from sales_order;

#5th question
update sales_order set product_category='Designer Dress' where order_id=108;
select product_category from sales_order where order_id=108;

#6th question
drop table sales_order;
desc sales_order;

