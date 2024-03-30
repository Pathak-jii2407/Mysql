


-- TCL : Transaction control language
/*
It is logical unit of work and is either completed or never started it gives control
to user view and save and discard operations are performed by user . It disables auto commit 
property of transaction is know as ACID. 

where A is Atomicty i.e. Transaction is not having middle phase and is atomic in nature.
C is consistenct i.e. Updateions are reflected everywhere and database remains same
I is isolation i.e. each transaction is independent from other transaction 
D is Durability:  It is durable i.e. database remains intact .
*/

use company;
show tables;
desc customer;
select * from customer;

-- rollback :- It discard all the changes done during transaction . It ends the transaction and mark the begning of new transaction . 

begin;
update customer set salary=salary*125 where id=1;
select * from customer;
delete from customer where id = 6;
rollback;
delete from customer where id = 6;
select * from customer;
rollback ;

-- commit:- It save all the changes.
begin;
update customer set salary=salary*15 where id=1;
commit;
select * from customer;


-- savepoint:- It is short term memory storage and save the changes for short duration of time.
-- rollback to:- It saves the changes upto savepoint and discard after savepoint

begin;
update customer set salary = salary + 15000 where id =1;
savepoint a;
update customer set salary = 10000 where id=1;
savepoint b;
select * from customer;
update customer set salary = salary +15000 where id = 1;
savepoint c;
select * from customer;
rollback to savepoint b;


set autocommit=0; 
update customer set salary = salary +15000 where id =1;
select * from customer;

set autocommit=1; 
update customer set salary = 15000 where id =1;
select * from customer;





