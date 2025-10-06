use parks_and_recreation;
-- in this we can allocate 1st name and last name tooo
select gender,avg(salary) over(partition by gender) as gender_salary
from employee_demographics demo
join employee_salary sal
        on (demo.employee_id=sal.employee_id);


select* from employee_demographics;
-- this one different
select gender,avg(salary) as avg_salary
from employee_demographics demo
join employee_salary sal
        on (demo.employee_id=sal.employee_id)
group by gender;

-- rolling total


select demo.first_name,gender,salary,
sum(salary) over(partition by gender order by demo.employee_id) as Rolling_total
from employee_demographics demo
join employee_salary sal
        on (demo.employee_id=sal.employee_id);
        
        
select demo.employee_id,demo.first_name,gender,salary,
row_number() over(partition by gender order by salary desc) as rownumb,
rank() over(partition by gender order by salary desc) as ranking,
dense_rank() over(partition by gender order by salary desc) as ranking 
from employee_demographics demo
join employee_salary sal
        on (demo.employee_id=sal.employee_id);
