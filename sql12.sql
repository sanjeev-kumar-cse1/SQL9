use world;

select name, continent , upper(name), lower(name) from country;

select name, continent , concat(continent, 'regex') from country;

select name, continent , concat(continent,' ', 'regex') from country;

select name, continent , concat(continent,' ', code) from country;

select name, continent , concat(continent,' ', code,'$','regex') from country; -- $ = any things like char, value,

select name, continent , concat_ws('-',continent, code,'regex') from country;

-- substring = char extract based on position
select name, substr(name,1) from country;

select name, substr(name,2) from country; -- start from 2 character

select name, substr(name,1) , substr(name,1,3)from country; -- only 1 to 3 char print from the country

select name, substr(name,1) , substr(name,2,5)from country; -- start with second char and then that form count 5 char 

select name, substr(name,1) , substr(name,-1)from country;

select name, substr(name,1) , substr(name,-4)from country;

select name, substr(name,1) , substr(name,-5)from country; -- any any has 5 char then empty

select name, substr(name,1) , substr(name,-5,3)from country; -- last 3  from back side

select name, continent from country where substr(name,1,1) = substr(continent,1,1); -- same first char of country and cotinent

select name, continent from country where substr(name,1,3) ='alg'; -- same first char of country and cotinent

select name, continent from country where name like 'alg%'; -- first 3rd char same 


-- instr = search position of char
select name, instr(name, 'e') from country; -- e char contain or not

-- length is declear the char is in byte
select name, char_length(name) from country; -- count the char letters



-- trim = extra spaces or char remove
-- ltrim = left side remove
-- rtrim = right side remove

select char_length('   yash .  ');

select trim('   yagggshggggg');

select trim(both 'g' from    'yagggshggggg'); -- remove the 
select name, trim( both 'a' from name) from country; -- only remove where last the small "a"

select name, trim( both 'A' from name) from country; -- only remove the where capital "A"



-- lpad and rpad

select name, population, lpad(population,9, '0') from country; -- add right side 0 only and not effect the popupation data



