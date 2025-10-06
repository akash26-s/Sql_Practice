use parks_and_recreation;
select * from employee_demographics;
select * from employee_salary;
-- inner join
select * 
from employee_demographics
inner join employee_salary
    on employee_demographics.employee_id=employee_salary.employee_id;
    
-- outer are to left and right
select *
from employee_demographics as dem
right join employee_salary as sal
     on dem.employee_id=sal.employee_id;
     
     
-- self join
select*
from employee_salary as emp1
join employee_salary as emp2
    on emp1.employee_id=emp2.employee_id;
    
-- joining multiple table
select*from Parks_departments;
select * 
from employee_demographics as dem
inner join employee_salary as sal
    on dem.employee_id=sal.employee_id
inner join parks_departments  pd
    on sal.dept_id = pd.department_id

