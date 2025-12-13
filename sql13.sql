-- numeric functions, dates

use world;

select lifeexpectancy, round( lifeexpectancy) from country;

select 83.62, round(83.68);

select 83.62, round(83.687,2);

select (456.23), round(6.23, -1); -- 10

select (456.23), round(46.23, -1); -- 50

select (456.23), round(76.23, -2); -- 100

select 456.23, round(456.23, 1), truncate(456.67,1); 

select 456.23, round(456.23, 1), truncate(456.67,1), mod(43,3); 

select 456.23, round(456.23, 1), truncate(456.67,1), mod(43.6,3);

select pow(2,3), ceil(3.000008),floor(3.999999);

select pow(2,3), ceil(3.000008),floor(3.999999);




-- date
-- inbuilt date yh date and time print krna

select now(), curdate(), current_timestamp(), current_time();

select now(), adddate(now(),2); -- two days add and increase

select now(), adddate(now(),2), adddate(now(),interval -3 month);

select now(), subdate(now(),2); -- two days decrease

select now(), subdate(now(),2), year(now() );

select now(), extract(week from nowa() );

select now(), date_format(now() , 'Month is %M & year is %y ' );

select  continent from country;

select distinct( continent) from country;

select count(continent), count(distinct(continent)) from country; 

