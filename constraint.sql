-- constraints:- It is characterstics given to any column or field which defines the nature or working of field
-- aslo known as Keys. 


-- 1. primary Key: Unique and not null.
-- syntax: create table <tablename>(field1 datatype(size) primary key,field2 datatype(size));

create database constraints;
use constraints;
create table customer(id int primary key, cname varchar(50));
desc customer;

-- unique : Any data can't be same. 
create table customers(id int primary key, cname varchar(50), depart_no int unique );
desc customers;

-- not null: It never accept null value. 
create table customers2(id int primary key, cname varchar(50) not null, depart_no int unique not null );
desc customers2;

-- default: It is used to provide the default value to the specified column when data is not inserted in the column default value is inserted automatically. 

create table customers3(id int primary key, cname varchar(50) not null, depart_no int unique not null, salary double(9,2) default 33000);
desc customers3;


-- check : It is used for validation or restrictions so that only specified criteria data can be inserted in the table
create table customers5(id int primary key, cname varchar(50) not null, depart_no int unique not null, salary double(9,2) default 32000,check(salary> 33000));
desc customers5;

-- foreign key: It is non-attribute key which access the data from primary key of master table .
-- it is o two types 
    --      column based: Created with references keyword only. 
    --      table based: Created with foreign key and references keyword . It can be implemented on more than one column. 

create table dept(id int , depart_no int,dname varchar(50) not null,loc varchar(150) default 'Rewa',foreign key(id)references customers5(id));
desc dept ;
-- constants with foreign key
-- 1.cascade: Any DML(insert-update-delete) action perforemd on primary key is also reflected on the froeign key automatically. 
-- 2.set null: Any DML action performed on primary key results the null value in foreign key. 
-- 3.restrict: DML actions are blocked both in primary as well as foreign. 
-- 4.no action: DML actions are blocked both in primary as well as foreign. 


-- syntax: on delete/insert/update cascade/set null/restrict/no action
create table dept1(id int , depart_no int,dname varchar(50) not null,loc varchar(150) default 'Rewa',foreign key(id)references customers5(id) on delete cascade);
desc dept1 ;









