use product;

select * from worker;
desc worker;
insert into worker values(2,'Angelina','Yu',20000,'2023-06-15','HR');
insert into worker values(3,'Steve','Stark',30000,'2013-07-08','Finance');

#1st question
delimiter $$
create procedure adding(in id_worker int, in fname_worker char(25), in lname_worker char(25), in worker_salary int,
in worker_joining datetime, in worker_dept char(25))
begin
insert into worker values(id_worker,fname_worker,lname_worker,worker_salary,worker_joining,worker_dept);
end $$
delimiter ;

call adding(1,'john','wick',25000,'2021-02-24','Sales');
select * from worker;

#2nd question
delimiter $$
create procedure gettingsalary(in id_worker int, out worker_salary int)
begin
select salary into id_worker from worker where Worker_ID=id_worker;
end $$
delimiter ;
set @sal=0;
call gettingsalary(1,@sal);
select @sal;

#3rd question
delimiter $$
create procedure updating(in id_worker int, in worker_dept char(25))
begin
update worker set Department=worker_dept where worker_id=id_worker;
end $$
delimiter ;
call updating(2,'Sales');
select * from worker;

#4th question
delimiter $$
create procedure counting(in worker_dept char(25), out p_worker_count int)
begin
select count(*) into p_worker_count from worker where Department=worker_dept;
end $$
delimiter ;

set @counter=0;
call counting('sales',@counter);
select @counter;

#5th question
delimiter $$
create procedure averaging(in worker_dept char(25), out p_avgSalary int)
begin
select avg(salary) into p_avgSalary from worker where Department=worker_dept;
end $$
delimiter ;
set @avgg=0;
call averaging('sales', @avgg);
select @avgg;















