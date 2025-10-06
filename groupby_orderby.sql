use Parks_and_Recreation;
select * from employee_demographics;
select gender,avg(age),max(age),min(age),count(age)
from employee_demographics
 group by gender;
#select * from employee_salary
select occupation,salary
from employee_salary
group by occupation,salary;



-- order by
select * from employee_salary
#order by first_name asc;
order by salary;




