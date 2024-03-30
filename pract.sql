USE employee1;

create table emp12(empno integer(4),ename varchar(50),dob date, address varchar(50),salary double(9,2),bonus double(7,2),phno varchar(12),email varchar(25),hdate date);

 -- displaying heading of tables 
 
 -- syntax : decs tablename
 desc emp12;

-- displaying structure in query form.
-- syantax : show create table <tableName>

show create table emp12;

