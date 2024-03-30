

#DataBase Fundamentals 

'''
1. Schema -> It is part of or Object of data 
e.g. Record ,Field,etc.

2. Entity-> The data is known as entity . These are relational.
        -:    E-R(Entity Relationship)     :-
                        a. One to One.
                        b. One to many / many to one.
                        c. Many to many.



3. Redundancy:- It is duplicasy of data 

4. Field -> It is known as column. Having same type of data

5. Rows-> Combination of different type of data .

6. Constraint->  These are special characterstics and decides the nature of fields

'''

#Database terminology->
'''
1. Relation(Table):- divided into rows and columns.
2. Domain:- (source) from where data is fetch.
3. Tuple :- Single row of relation.
4. Attribute:- single column of relation
5. Degree:- Number of columns in a relation.
6. Cardinaliety:- Number of rows in a relation
7. view:- It is an imaginary table created by database itself for security purpose any query with select command access the record from view table and changes are temporary
8. Primary Key:- Main key attribute it is unique and not  null.
9. Candidate Key :-  It is unique in nature and can act as primary key.
10. Compound/Composite:- It can act two or more than two manners i.e. primary as well as candidate.
11. Alternate key:- Non key attribute.
12. Foreign Key:- It is non attribute key of dependent table which access its data from the primary key of master table.
'''



#Referiential Integrity:- 


'''These are the rules followed during foreign key creation'''

"""
RULES:-
a. Data is inserted first of all in the primary key and then to the foreign key
b. Primary key cant be modified or updated as there is inter related data in the foreign key
c. Primary key cant be deleted and change
"""

#SQL Arcitecture:- 
'''
1. Visual / Text Editior
2. Engine
    a. Innodb
    b. ISAM
'''

#Bin Folder:- 
'''It is having libraries of SQL or Programming Languages and user defind work is saved in bin folder'''

#Buffer:- (memory of programming and data base and command prompt)


#Command categeories of SQL:-
'''
1. DDL (Data Defination Language) :- It is having commands related with strutrure of tables i.e. columns. To create /Modify or to Updates. 
        a. create
        b. describe /desc
        c. drop 
        d. truncate
        e. alter
        f. rename
2. DMl (Data Manipulation Language):- It is having commands related with row or data or record 
        a. insert
        b. update
        c. delete
        d. select
        
NOTE:-It is also knows as UID(Update Insert Delete)


3. TCL (Transaction Control Language) :- It is used to take over the control from database. 
        a. begin/start transaction
        b. rollback
        c. commit
        d. savepoint
        e. rollback to
        f. set transaction
        g. auto commit


4. DCL (Data Cntrol Language):- It is used for permission or privalage of data to specified user . 
        a. grant
        b. revoke

'''




