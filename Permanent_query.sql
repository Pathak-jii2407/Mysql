-- To save data permanent
 -- > update: Use to perform modification in the row or records.
 -- syntax: update table_Name set column_1=value,column_2=value,... where condition order by field name asc/desc;
 
use tata_company;
 -- e.g.

desc employees;
update employees set salary=salary*20 where id =0;

select * from employees where id = 0;

update customer set salary = salary*1.1,job_title='Manager' where job_title="Accountant";

update customer set salary = salary*1.1,job_title='Accountant' where job_title="Manager";

update employee set id=101 , username='abcdefg' where username="holly01 " order by id desc ;
update employee set id=103 , username='egasdfgh' where username="angela6 " order by id desc ;

-- coping
create table customer_new select * from customer;
select * from customer_new;

-- truncate: It vaccent the table i.e. delete all the rows but structure of table exist in the memory. 
truncate table customer_new;

-- deleting table: drop command is used to delete the table
drop table customer_new;

-- rename the table: 
-- syntax: rename table old_table_name to new_table_name;
rename table employee to Customer;
select * from Customer;






