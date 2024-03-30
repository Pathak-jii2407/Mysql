-- alias: It is the duplicate name given to column. created with as key word. 

use company;
-- syntax: select field as aliasname from table;
desc employee;

select salary as total_salary from employee;
-- another way :
 select salary "Total_salary" from employee;

-- print column with message. 
select "salary of",username,"is",salary from employee;

-- use of arithematic operator: it is present in an imaginary table named as dual . It is access automatically.

select 20+70 from dual;
select 20+70;
select 500/20;
select salary % 3 from employee;
select pow(salary,2) from employee;








