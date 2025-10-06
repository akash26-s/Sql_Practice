use parks_and_recreation;
select first_name,length(first_name)
from employee_demographics
order by 1;

select upper('skyfallll');
select lower('boomm ');

select trim(       'skyy'       );
select ltrim(       'skyy'       );
select rtrim(       'skyy'       );

-- substring
select birth_date,
substring(birth_date,6,2) as month
from employee_demographics;

-- replace
select first_name,replace (first_name,'A','Z')
from employee_demographics;

-- locate
select first_name,locate('an',first_name)
from employee_demographics;
-- concate
select first_name,last_name,
concat(first_name,' ',last_name)
from employee_demographics



