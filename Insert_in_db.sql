


-- insert record
-- selected column:
-- syntax: insert into <table name>(field1,field2,...)values(val1,val2,....)





-- syntax: insert into <table_name> values(val1,val2,..);
-- selected column: -> syntax: insert into <table name>(field1,field2,...)values(val1,val2,....)



use employee1;
show tables;
desc emp1;

insert into emp1 values(1,'sundram','2004-07-24','rewa',96000,56000,'9752249543','ved24072003@gmail.com','2024-01-08');
insert into emp1 values(2,'ved','2004-07-26','rewa',9000,5000,'97522443','saurav24072003@gmail.com','2024-01-08');
insert into emp1 values(3,'saurav','2004-07-26','rewa',9000,5000,'97522443','saurav24072003@gmail.com','2024-01-08');
insert into emp1 values(4,'rohit','2004-07-26','rewa',9000,5000,'97522443','saurav24072003@gmail.com','2024-01-08');
insert into emp1 values(6,'Saksham','2004-07-2','rewa',900,500,'1234567890','saksham24072003@gmail.com','2024-01-08'),(7,'yash','2004-06-2','rewa',90,50,'8907654321','yash3@gmail.com','2024-01-08');
insert into emp1 (ename,address,email) values('pathak ji','Bhopal','sauravpathak@gmail.com');

-- delete from emp1 where ename=(select distinct ename from emp);

select * from emp1;

-- selecting data from pre defined database
-- syntax: create  <new tablename> selec * from old table name;
-- e.g. create table emp2 select * from emp1;

create table emp2 select * from emp1;
select * from emp2;









