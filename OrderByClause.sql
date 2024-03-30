

use company;

-- order by clause : it is used to arrange data in ascending or in descending order
-- asc is ud=sed for ascending and desc is for descending
-- default in ascending order

-- syntax: select */fieldList from table name where condition order by field_name asc/desc , field_name2 asc/desc limit range;

select * from employee order by username ;
select * from employee order by username desc ;
select * from employee order by job_title desc;
