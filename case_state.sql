use parks_and_recreation;
select first_name,last_name,age,
case
    when age<=30 then 'young'
    when age between 31 and 50 then 'old'
end as decition
from employee_demographics;


select first_name,last_name,salary,
case
    when salary < 50000 then salary*1.05
    when salary > 50000 then salary*1.07
end as new_salary,
case
    when dept_id=6 then salary*.10
end as special_bonus
from employee_salary


