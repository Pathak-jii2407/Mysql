


-- join : - It is a query to access the record s from two or more table it form centralized database system necessary condition :
/*
1. at least one column must have to be common having same name , sama datatype, same size and same
set of data. 

2. atleast one table must have primary  key. 
{
	IT is having concept of foreign key and relationship is eastblished between both table. 
}
*/

use company;

create table product(id int, pname varchar(50),categroie varchar(50), brand varchar(50), city varchar(20));

insert into product values(1,'laptop','electronics','hp','Banglore');
insert into product values(2,'Phone','electronics','Oppo','Indore');
insert into product values(3,'Washing Machine','electronics','LG','Banglore');
insert into product values(4,'Chocolate','beverage','Cadbury','Pune');
insert into product values(5,'T-shirt','Clothing','LP','Maharastra');
insert into product values(6,'Jeans','Clothing','Peter-England','Pune');
insert into product values(7,'Shoes','Footewar','Gucci','Austrelia');
insert into product values(8,'Telivision','electronics','LG','Rewa');
insert into product values(9,'Mustang-GT','Car','Ford','Banglore');
insert into product values(10,'Iphone','electronics','Apple','Banglore');


select * from product;

/*
Types of join:
1.Equijoin:- It is done for equality of record to access the common records from both tables
common fields from both tables can be accessed.
syntax:- Select fieldlist from table1 , table2 where join condition ;

2. non equijoin:- It is done for inequality of the records comparision operator are used .
 
3. natural join:- It is equijoin- one of the common field
syntax:- select fieldlist from table1 natural join table2;

*/

select customer.id , salary,username,product.id,pname,categroie,city from customer,product where customer.id=product.id;

select customer.id , salary,username,product.id,pname,categroie,city from customer,product where customer.id>product.id;

select * from customer natural join product;
select id,username,salary from customer natural join product;

-- self join:- It is used to compare rows and columns of same table for this alias of 
/*table is cerated and join is preformed. It may be between original
 table to alias , alias to alias, alias to original
 */

-- syntax:- select alaias.field1 , alias.field2,... from tableName alias1,tablename alias2 where join condition ;

use company;
select  a.id,a.username,a.salary,b.id,b.username,b.salary from customer a, customer b where a.id=b.id;


-- cross join:- It is used to compare each and every row of 1st table with each and every row of second table. 
/*
It is also known as cartiation product where rows are multiplied and colomns are added.
It is traditional type of join.

syntax:- Select * from table1 cross join table2;
*/

select * from customer cross join product;
select * from customer , product where product.id<6;


-- inner/outer/left/right join:- 
/*
These joins are use to access matching,non-matching as well as
null records of respective side of tables .
where as other joins never gives null records.
syntax:- select * from table one left/right join table2 on join condition;
*/             
select * from customer left join  product on customer.id=product.id;
select * from customer right join  product on customer.id=product.id;










