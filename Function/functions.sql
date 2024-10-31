use entri_d41;

select * from persons;

#1st question
alter table persons add DOB date; 

#2nd question
DELIMITER $$
CREATE FUNCTION ageCalculator(yrs date)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE age int;
    SET age=timestampdiff(year,yrs,curdate());
    RETURN age;
END $$
DELIMITER ;

select ageCalculator('2003-03-13') as age;

update persons set DOB = '1999-03-23' where id = 1;
update persons set DOB = '1996-08-08' where id = 2;
update persons set DOB = '2000-10-31' where id = 3;
update persons set DOB = '1980-01-13' where id = 4;

#3rd question
select Id, Fname, Lname, DOB, ageCalculator(DOB) as Age from Persons;

#4th question
select Country_name, length(Country_name) as Length from Country;

#5th question
select Country_name, left(Country_name, 3) as threeChars from Country;

#6th question
select Country_name, upper(Country_name) as upperChars, lower(Country_name) as lowerChars from Country;


