
'''
syntax:-
create table <tablename>(
    field1 datatype(size),firld2 datatype(size), ....
);

'''
#Datatypes:-
'''
1. integer(int) -> 9 digit accept , size is not compulsory
2. doubble(s,p) -> size is compulsory 
        where s is size of the number and 
        p is the precision number (after decimal) 

3. char(size) -> fixed length character datatype, size compulsory.values to be written in single or double inverted comma 

4. varchar(size) ->  It is the flexible datatype,size compulsory.values to be written in single or double inverted comma .
    (variable lenth character)
        
5. date -> 8 characters,values to be written in single or double inverted comma , e.g. : 
                                                                                    "yyyy-mm-dd"
                                                                                    

6. time -> 8 characters,values to be written in single or double inverted comma , e.g. :
                                                                                    "hh:mm:ss am/pm"

7. int autonumber -> It mostly used when the data in n number.

'''

from faker import Faker

fake = Faker()

# Generate 100 fake email addresses
fake_emails = [fake.email() for _ in range(100)]

# Print the list of fake emails
def em():
    for idx, email in enumerate(fake_emails, start=1):
        return email
print(em()[0:5])
        
