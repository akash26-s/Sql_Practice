-- comment,table,expression

use parks_and_recreation;

with CTEs_example as(
select gender,avg(salary) avg_salary,max(salary)  max_salary
from employee_demographics  dem 
join employee_salary  sal
     on dem.employee_id=sal.employee_id
group by gender)

select avg(avg_salary) from CTEs_example
;


with cte_example as
(
select employee_id,first_name,birth_date
from employee_demographics
where birth_date>'1985-01-01'
),
cte_example2 as
(
select employee_id,salary
from employee_salary
where salary>50000
)
select * from 
cte_example
join cte_example2
     on cte_example.employee_id=cte_example2.employee_id;