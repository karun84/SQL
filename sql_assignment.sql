create database school;
use school;

create table STUDENT(RollNo int, Name varchar(25), Marks int, Grade varchar(10));

insert into STUDENT values(1, "John", 30, "A");
insert into STUDENT values(2, "Wick", 20, "B");
insert into STUDENT values(3, "Max", 80, "O");
insert into STUDENT values(4, "Joanne", 36, "A");
insert into STUDENT values(5, "Damm", 10, "F");
insert into STUDENT values(6, "Sita", 90, "O");
insert into STUDENT values(7, "Lalu", 23, "C");
insert into STUDENT values(8, "Alex", 30, "B");

select * from STUDENT;

alter table STUDENT add Contact char(10);

alter table STUDENT drop column Grade;

alter table STUDENT rename to CLASSTEN;

select * from CLASSTEN;

truncate table CLASSTEN;

drop table CLASSTEN;

select * from CLASSTEN;