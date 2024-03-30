use company;

select * from customer;
-- select job_title,min(salary) from customer group by job_title;

select year(curdate()) - year("2003/07/24") as date;
SELECT DATEDIFF(NOW(), '2003-07-24');

select username, salary from customer where (job_title,salary) in (select job_title,max(salary) from customer group by job_title);



select username, salary,job_title  from (select username,salary,job_title , rank() over (partition by job_title order by salary desc) as salary_rank from customer) as ranked_data where salary_rank=1;

SELECT username, salary, job_title FROM (SELECT username, salary, job_title, RANK() OVER (PARTITION BY job_title ORDER BY salary DESC) AS salary_rank FROM customer) AS ranked_data WHERE salary_rank = 1;





-- pract

use tata_company;
select * from employees;
select distinct username from employees;
select count(*) from employees;
select * from workers;

select employees.id,employees.username,workers.id,workers.username,workers.job_title from employees inner join workers on employees.job_title = workers.job_title order by employees.id and workers.id asc ;
select employees.id,employees.username from employees order by employees.id asc limit 10,2;
select * from employees where employees.id between 10 and 20;
select * from employees where employees.id in (select count(employees.id));

select * from employees where employees.id%2=0;
select * from employees where employees.id%2;

select username,id from employees where id%3!=0;

select "True" where 100990000000>20343000000 ;
SELECT id AS custom_id, username, salary
FROM employees
WHERE salary>991000;

select username from employees where length(username)>15;
SELECT COUNT(DISTINCT job_title) FROM employees;



-- day 2
use tata_company;
-- q-> Find all the name,job with his salary more then 1,00,000
select id,username,job_title,salary from employees where salary>100000;

-- q2-> Find all the name in database whoes jobs are same and their salary
select employees.username,employees.salary ,workers.username,workers.salary,employees.job_title  from employees inner join workers on employees.job_title=workers.job_title ;