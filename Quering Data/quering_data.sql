use entri_d41;

create table country(ID int primary key, country_name varchar(25), population int, area int);
create table persons(ID int primary key, Fname varchar(10), Lname varchar(15),population int,
rating decimal(10,2), country_ID int, country_name varchar(25), foreign key (country_ID) references country(ID));

insert into country values(1,'India',20000000,65264458),(2,'China',2000000,95264458),(3,'USA',100000,48964458),
(4,'Canada',400000,152641238),(5,'Finland',500568,65457458),(6,'Netherlands',350000,4964458),(7,'UK',1500000,79664458),
(8,'Japan',120090,2564458),(9,'Mexico',3540000,98764458),(10,'Australia',200000,98745458);

insert into persons values(1,'John','Wick',800000,5.9,1,'India'),(2,'Amanda','Qureshi',50000,3.5,2,'China'),
(3,'David','Mobs',123000,4.3,3,'USA'),(4,'Thorfinn','Thors',400000,8.5,4,'Canada'),(5,'Joseph','Jostar',240000,4.0,1,'India'),
(6,'Lucy','Winks',970000,7.2,7,'UK'),(7,'Emma','Watson',765000,6.6,null,null),(8,'Ayaka','Kamisato',60000,5.3,8,'Japan'),
(9,'Lucius','Legrand',540000,7.9,9,'Mexico'),(10,'Taylor','Smith',750000,4.8,10,'Australia');

#1st question
select distinct country_name from persons;

#2nd question
select Fname as First_name, Lname as Last_name from persons;

#3rd question
select * from persons where rating>4.0;

#4th question
select * from country where population>1000000;

#5th question
select * from persons where country_name='USA' or rating>4.5;

#6th question
select * from persons where country_name is null;

#7th question
select * from persons where country_name in ('USA','Canada','UK');

#8th question
select * from persons where country_name not in ('India','Australia');

#9th question
select * from country where population between 500000 and 2000000;

#10th question
select * from country where country_name not like 'c%';