use product;

create table teachers(id int primary key auto_increment, fullname varchar(25), subjects varchar(25), 
experience int, salary varchar(10));

insert into teachers(fullname, subjects, experience, salary) values
('Alice Johnson', 'Mathematics', 5, 50000),
('Bob Smith', 'Science', 8, 55000),
('Catherine Brown', 'English', 12, 60000),
('David Wilson', 'History', 3, 45000),
('Eva Green', 'Geography', 7, 52000),
('Frank White', 'Physics', 15, 70000),
('Grace Black', 'Chemistry', 2, 48000),
('Hannah Blue', 'Biology', 9, 53000);

select * from teachers;

CREATE TABLE teacher_log ( 
teacher_id INT, 
action VARCHAR(50), 
action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select * from teacher_log;

#2nd question
delimiter $$
create trigger before_teacher_insert
before insert on teachers for each row
begin
if new.salary<0 then
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT="salary CAANOT be negative";
end if;
end $$
delimiter ;

insert into teachers(fullname, subjects, experience, salary) values
('Johnson Ali', 'Mathematics', 9, -50000);

#3rd question
delimiter $$
create trigger after_teacher_insert
after insert on teachers for each row
begin
insert into teacher_log (teacher_id, action) values (new.id,'new entry');
end $$
delimiter ;

insert into teachers(fullname, subjects, experience, salary) values
('Johnson Ali', 'Mathematics', 9, 50000);
select * from teacher_log;

#4th question
delimiter $$
create trigger before_teacher_delete
before delete on teachers for each row
begin
if old.experience>10 then
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT="CANNOT delete data with experience > 10 years";
end if;
end $$
delimiter ;
delete from teachers where experience>10;

#5th question
DELIMITER $$
    CREATE TRIGGER after_delete_teacher 
    AFTER DELETE ON teachers 
    FOR EACH ROW 
    BEGIN 
        INSERT INTO teacher_log (teacher_id, action) 
        VALUES (OLD.id, 'AFTER DELETE'); 
    END $$
DELIMITER ;

delete from teachers where id=5;
select * from teacher_log;









