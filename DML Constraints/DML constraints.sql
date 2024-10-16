use sales;

create table managers(manager_id int auto_increment primary key, 
first_name varchar(25), last_name varchar(25), DOB date, ages int check (ages>20),
last_update varchar(25),gender varchar(10), department varchar(25), salary int not null);

desc managers;

insert into managers values(1,'Amina','Akbar','2020-02-15',21,'Today','Female','Finance',30000);
insert into managers values(2,'Aaliya','Faisal','2020-05-25',30,'Today','Female','IT',35000);
insert into managers values(3,'Alex','John','2021-11-01',29,'Today','Male','IT',50000),
(4,'Christeena','Jacob','2024-05-23',22,'Yesterday','Female','HR',15000),(5,'Amal','Joy','2023-12-15',27,'Today','Male','Finance',25000),
(6,'Aravind','Babu','2019-03-13',30,'Today','Male','IT',44000),(7,'Edward','Newgate','2016-02-17',35,'Today','Male','HR',18000),
(8,'Steve','Rogers','2022-06-19',33,'Today','Male','Finance',24000),(9,'Jack','Flugel','2023-08-09',25,'Yesterday','Male','IT',38000),
(10,'Steve','Jobs','2020-01-25',38,'Today','Male','IT',16000);

select * from managers;
#2 question
select first_name, DOB from managers where manager_id=1; 

#3rd question
select first_name, salary * 12 as annual_income from managers;

#4th question
 select * from managers where first_name!='Aaliya';
 
 #5th question
 select * from managers where department='IT' and salary>25000;
 
 #6 question
 select * from managers where salary between 10000 and 35000;