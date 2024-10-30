use entri_d41;

select * from country;
select * from persons;

#1st question
select left(country_name,3) as FirstThreeChars from country;

#2nd question
select concat(Fname,' ',Lname) as FullName from persons;

#3rd question
select count(distinct(country_name)) from persons;

#4th question
select max(population) as maxpopulation from country;

#5th question
select min(population) as maxpopulation from country;

#6th question
insert into persons values(11,'Candace',null,780000,4.7,8,'Japan'),(12,'Miguel',null,780490,5.5,9,'Mexico');
select count(Lname) from persons;

#7th question
select count(*) as totalRows from persons;

#8th question
select population from country limit 3;

#9th question
select * from country order by rand() limit 3;

#10th question
select * from persons order by rating desc;

#11th question
select country_name, sum(population) from persons group by country_name;

#12th question
select country_name from persons group by country_name having sum(population)>50000;

#13th question
select country_name, count(*) as totalPeople, avg(rating) as averageRating from persons group by country_name
order by averageRating asc;










