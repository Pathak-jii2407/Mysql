-- wild card denotion : '%' or '_'
-- it is search criteria in sql . There are two wild cards '%'(It stands for many character at a time and works with like operator.It gives large num of recoeds) and '-'(It stands single character at a time and gives exact search. )

use company;

-- syntax: select */fieldList from tableName where field name like "searc_criteria";



select * from employee;
select * from customer where username like 'j%';
select * from customer where username like '%a ';
select * from employee where username like '%ja%';
select id,username,job_title from employee where username like '__ul___ ' ;

-- searching null operator
desc employee;
insert into employee values (101,null,null,1234567890,76000,null);
insert into employee values (102,null,null,1234567890,76000,null);
insert into employee values (103,null,null,1234567890,76000,null);

-- 'is' opr is used to search null reccords
-- syntax: select */field/list where field_name is null;
select * from employee where username is null;
-- it searches null records and replace that with given data. 
select id,username,ifnull(username,'alisa') from employee where id=102;

