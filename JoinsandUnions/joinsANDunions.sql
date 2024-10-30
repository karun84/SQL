use entri_d41;

select * from persons;
select * from country;

#1st question
 #Left Join
select m.ID,m.Fname,m.Lname,n.country_name,n.population from persons as m left join country as n on
m.ID=n.ID;
 #Inner Join
select m.ID,m.Fname,m.Lname,n.country_name,n.population from persons as m inner join country as n on
m.ID=n.ID;
 #Right Join
select m.ID,m.Fname,m.Lname,n.country_name,n.population from persons as m right join country as n on
m.ID=n.ID;

#2nd question
select distinct country_name from country union select distinct country_name from persons;

#3rd question
select distinct country_name from country union all select distinct country_name from persons;

#4th question
select Fname, round(rating) from persons;











