
-- Alter: It is used to perform modification in the structure of table i.e. Columns
-- It is having 4 sub-commands.
    -- add
    -- modify
    -- change
    -- drop

-- operations of alter: 



use company;

select * from customer;
desc customer;
-- last column known as most recent.


-- add :  add new column to the table:
-- syntax : alter table <tableName> add column <columnname> datatype(size) first/after column name;

alter table customer add column test double(9,2);


alter table customer add column bonus double(9,2);
alter table customer add column commission double(9,2) first;
alter table customer add column insentive double(9,2) after salary;


-- change: use to rename tha column_name
-- syntax: alter table tableName change column old_column_name new_columnName datatype(size);
alter table customer change column phone_num phno bigint;


-- modify: It modifies the datatype and size
-- syntax: alter table tablename modify column columname new_datatype(newsize) first/after columnName;

alter table customer modify column phno varchar(12) after salary;


-- drop: delete the column
-- alter table tableName drop column columnName ;
alter table customer drop column commission;
alter table customer drop column test;


update customer set bonus=3000 where id in(11,13,15,16,18,20,25,30,35,40,50,60,80,100);
update customer set insentive=insentive+7000 where id between 1 and 103;



-- adding constraint:
-- syntax: alter table tablename add constraint constraintNAme(fieldNAme); 

-- keys: primary/unique/not null/foreign /check  

alter table customer add constraint unique(phno);

alter table customer add constraint CHECK (salary>1000);

-- deleting constraint
ALTER TABLE customer DROP INDEX phno;
ALTER TABLE customer DROP INDEX test;

alter table customer modify id int auto_increment;
insert into customer(username,salary)values('abcd',1100);

