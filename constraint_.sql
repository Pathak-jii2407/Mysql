

create database school;
use school;
create table Teachers(id int primary key,tname varchar(50) not null,tphone bigint unique not null,loc varchar(100) default 'Rewa', salary double(9,2) default 23000);
create table Student0(id int,sname varchar(50) not null,sphone bigint unique,loc varchar(100),foreign key(id) references Teachers(id) on delete cascade);
desc Teachers;
desc Student;

insert into Teachers values (1,'Sandeepan Mishra',7898012989,"Sidhi",45000);
insert into Teachers values (2,'BM Sharma',9752249543,"Rewa",50000);
insert into Teachers values (3,'VM Dwivedi',7898057882,null,null);
insert into Teachers values (4,'Veena Mishra',6265621583,"Satna",null);
insert into Teachers values (5,'Pragya Dubey',9753639567,null,30000);

select * from Teachers;

insert into Student values (1,'Saurav Mishra',6754789023,"Jabalpur");
insert into Student values (2,'Mihir Sharma',8756349012,"Rewa");
insert into Student values (3,'Saransh Dwivedi',9867542390,null);
insert into Student values (4,'Arpit patel',9087896778,"Satna");
insert into Student values (5,'saurabh Dubey',6254971334,null);

insert into Student0 values (6,'Saurav',0987654321,"Jabalpur");
insert into Student0 values (2,'Mihir Sharma',8756349012,"Rewa");
insert into Student0 values (3,'Saransh Dwivedi',9867542390,null);
insert into Student0 values (4,'Arpit patel',9087896778,"Satna");
insert into Student0 values (5,'saurabh Dubey',6254971334,null);


alter table Students add column fee double(7,2) default 28000;
alter table Students add column RemainingFee double(7,2);
update Students set RemainingFee=6700 where id between 1 and 3;
update Students set RemainingFee=28000-RemainingFee where id=5;
insert into Student0 values(4,'saurav',1234567890,'Rewa');

select * from Student0;

delete from Teachers where id = 4;
drop table students;

-- Enabling or Disabling Foreign Key

set foreign_key_checks =0; -- 0 is for disable and 1 for enable
set foreign_key_checks =1;

