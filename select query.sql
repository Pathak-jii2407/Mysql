

-- select brings the data from imaginary table
-- select
  -- > All : Access records of spacified field.
  -- > * : Access all the records of the table.
  -- >distinct: ignore repeted data .
  -- > where clause : It is used to provide the condition with select query.It works with single row query.
  
  -- syntax: select */field_list from <table name> where condition;

select * from emp1;
select all ename from emp1;
select empno,ename,salary from emp1;
select distinct salary from emp1;
select * from emp1 where salary>=96000;


  
  









