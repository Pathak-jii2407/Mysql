
-- logical opr:- It is used to combine two or more conditions.
-- TYPES:-
--  -> and
 -- -> or
 -- -> not


use company;
show tables;

desc employee;

select * from employee;

-- and
select * from employee where salary>70000 and id>10;

-- or
select * from employee where salary >50000 and username='jennife '  or username='holly01 ';

--     not/   !=   /     <>
select * from employee where not salary <50000 and not id >=50;


-- in and between opr.

-- in : It is used to access rows in list or series which is not in sequence. 
-- between: Used to access the rows in range which is in sequence. First and last value are included.

select * from employee where id in (5,9,12);
select * from employee where id between 9 and 12;
select * from employee where id between 9 and 12 and salary between 50000 and 70000;














-- create table custmer select id,trim(username),email,phone_num,salary,job_title from employee;
-- select * from custmer;
-- select * from custmer where salary >50000 and trim(username)='jennife'  or trim(username)='holly01';
-- desc custmer;

-- alter table custmer change trim(username) username varchar(50);


