
-- library functions
-- 1.string
use school;
-- char function :- It returns the equivalent character of given numeric code.
SELECT CONVERT(CHAR(65,66,97,98) USING utf8);
select length('ved prakash pathak' )as name;
select length(tname)from teachers;

-- concat
select * from teachers;
select concat('ved','','pathak') as name;
select concat(tname,salary) from teachers;

-- left():- It extract specified number of character from begining or left side of string
select left('khushi',4) ;

-- right():-It extract specified number of character from last or right side of string
select right (tname,3) from teachers;

-- substr:- It extract specified number of characters from given position
select substr('ved prakash pathak',-18,12);

-- mid():- same as substr
select mid('ved prakash pathak',-18,12);

-- reverse():- It returns the reverse if given string
select reverse('ved');

-- replace():- It replace specifird character in the string with given character. 
select replace('saurabh','bh','v');

-- instr():-  (in string function)It returns the position of given character in the string if character is not present then it returns the zero if matching case is given then it returns the position of first character and such position can also be given
select instr('corporation','ion');

-- ucase():- uppercase:- 
select ucase('ved');
select upper('ved');
-- lcase():- Lower case
select lcase("VED");
select lower("VED");

-- ltrim:- removes blank space from left side
-- rtrim:- removes blank space from right side
-- trim:- removes blank space from both side
select ltrim(' ved');
select rtrim('ved ');
select trim(' ved ');

-- space:- It is used to give space of specified numbers
select space(10),('Ved prakash');


-- format():- 

-- charindex():- It returns the position of given character or substring in the string. 
-- syntax: Charindex(character,string);
SELECT locate('ved', 'avede') AS 'position'; -- it searches for given character and aalso gives position. 
select  character_
select repeat('ved',3); -- it repeats the given string as per specified . 
