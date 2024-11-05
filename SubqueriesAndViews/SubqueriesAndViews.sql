
use entri_d41;
select * from country;
select * from persons;

#1st question
select country_name, count(*) as NoofPersons from persons group by country_name;

#2nd question
select country_name, count(*) as NoofPersons from persons group by country_name order by NoofPersons desc;

#3rd question
select country_name, avg(rating) as AvgRating from persons group by country_name having avg(rating)>3.0;

#4th question
select rating from persons where country_name='USA';
select country_name from persons where rating=(select rating from persons where country_name='USA');

#5th question
select avg(population) from country;
select country_name from country where population>(select avg(population) from country);

create database product;
use product;

create table customer(customer_id int primary key, first_name varchar(25), last_name varchar(25), email varchar(20),
phone_no varchar(12), address varchar(30), city varchar(25), state varchar(20), zip_code int, country varchar(25));

insert into customer values(1,'Matt','Wilis','matt@gmail.com','8597463279','Beverly Hills','Las Vegas','California',678912,'US');
insert into customer values(2,'Angelina','Joseph','angie@gmail.com','2354463279','St.Adams','Paris','Franks',678912,'France');
insert into customer values(3,'Louis','Hamilton','louie@gmail.com','3654463079','Beverly Hills','Las Vegas','California',6789324,'US');
insert into customer values(4,'John','Mark','john@gmail.com','7896563279','Skyline','New York','Washington',012912,'UAE');
insert into customer values(5,'Bob','Smith','boby@gmail.com','1254632790','FischlNShips','Liones','Worchestshire',789912,'England');

#1-1st question
create view customer_info as select first_name, email from customer;
select * from customer_info;

#1-2nd question
create view US_customers as select * from customer where country='US';
select * from US_customers;

#1-3rd question
create view customer_details as select concat(first_name,' ',last_name) as fullname, email, phone_no, state from customer;
select * from customer_details;

#1-4th question
update customer_details set phone_no='1234567890' where state='California';

#1-5th question
select state, count(*) as custCount from customer group by state having count(*)>1;

#1-6th question
select state, count(*) as custCount from customer_details group by state;

#1-7th question
select * from customer_details order by state asc;




