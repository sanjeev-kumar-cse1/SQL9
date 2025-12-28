select * from world.country;

-- if(Condition, True, False)
-- if(Condition, True, if(Condition, True, False))
/*
case population
     when
*/
select name, population, 
case 
    when population=0 then 'No Population'
    when population=8000 then 'small population'
end from world.country;

select name, population, 
case 
	when population>100000 then 'large Population'
    when population>=50000 then 'mwdium population'
    when population>=8000 then 'small population'
end from world.country;


select name, population, 
case 
	when population>100000 then 'large Population'
    when population>=50000 then 'medium population'
    when population>=8000 then 'small population'
    else 'V.Small'
end from world.country;


select name, population, 
case 
	when population>100000 then 'large Population'
    when population>=50000 then 'medium population'
    when population>=8000 then 'small population'
    else 'V.Small'
end as 'Status' from world.country;

select count(*), 
case 
	when population>100000 then 'large Population'
    when population>=50000 then 'medium population'
    when population>=8000 then 'small population'
    else 'V.Small'
end as 'status' from world.country
group by status;