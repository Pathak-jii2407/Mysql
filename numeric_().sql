
-- numeric() :- 
-- 1. pow()
select pow(2,3);
-- 2. int():- It converts into int
-- select int(434.6666);
-- 3. sqrt();
select sqrt(4);
-- 4. abs():- It convert negative into +ve. 
select abs(-33);
-- 5. mod() :- It gives reminder value. 
select mod(10,3);
-- 6. sign():- 
select sign(-1);

-- ceil():- It returns next highest integer
select ceil(45.044);
-- floor():- It returns the same integer
select floor(54.99);

-- round():- It round of the numbers to the given position. it may be positive -ve or zero ,
/*	if position is +ve then places after decimal ,
	It it is zero then decimal place and
	if position is -ve then places before decimal */
 
select round(5928.16,1); -- indexing sarts 1,2,3,.....
select round(7289.454,-4); -- -1 =>tens ,-2 =>hundred, -3 =>Th , ....


-- truncate():- It cut off the number from given poition. if position is positive or zero then it cut the number just after th e given position and if the position is -ve then it place as many zero as per the numbers are cut off. 

select truncate(45512.654389,-3);

-- rand():-It generates the random number. 

SELECT FLOOR(RAND() * 10) AS random_integer; -- last num not included. (1+ RAND() * 10)

-- DATE AND TIME():
-- 1. curdate()/current_date():-It returns the system date. 
select curdate();
-- 2. date():It rturns the date only
select date(curdate());
-- 3. month(): It retuns the month
select month('2023/06/12'); -- month(curdate())
select monthname('2023/06/12');
select dayname('2043/01/22');

-- dayofweek():-
select dayofweek(curdate()); 
select dayofmonth(curdate());
select dayofyear('2003/07/07');


-- now():- It returns system date and time before execution of query
select now();
select sysdate(); -- it returns the system date and time after execution of query. 
select sleep(5);

-- difference between now() and sysdate():-

select now(),sleep(5),sysdate();

use school;
show tables;
select * from teachers;

select sum(salary) from teachers;

select max(salary) from teachers;
select min(salary) from teachers;

select avg(salary) from teachers; -- null value is not counted

select count(salary)  from teachers;
select count(*) from teachers;

use company;
-- group by():- It is used to group similar record in the table and divide the table into suitable or sub groups . grouping is done on one or more than one field aggregate function works independently for each group. 
-- syntax:- select field_list from table name group by field_1 , field_2 ;
select * from customer;

select sum(salary),job_title,count(*) from customer group by job_title;

-- having clause:- 
/*
Use to provide condition with group by clause i.e. multiple row query 
aggregate() can also be given with having clause only group by columns
can be used with having condition
*/
select sum(salary),job_title, count(*) from customer group by job_title having count(job_title)=3 and count(job_title)<4;


