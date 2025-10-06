use parks_and_recreation;
#select * from employee_demographics
select gender,avg(age)
from employee_demographics
group by gender having avg(age)>40;

# select * from employee_salary
select occupation,avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation 
having avg(salary)>70000;

-- limmitt

select * from employee_demographics
order by age desc limit 5,1;

-- aliasing

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age<40


