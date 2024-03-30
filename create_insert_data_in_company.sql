
create database if not exists company;
use company;

create table if not exists employees(id int , E_name varchar(50),phono varchar(10),email varchar(50));
ALTER TABLE employees
ADD COLUMN salary double(9,2);
show tables;
desc employees;

insert into employees values(1,'ved',97522,'ved@gmail.com',65000);

select * from employees;


