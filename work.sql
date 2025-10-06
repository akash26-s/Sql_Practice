-- CTAS table creating table from another table  ##

CREATE TABLE HIGH_PAID_EMPLOYEE AS
SELECT 
     employee_id,first_name,occupation,salary
FROM EMPLOYEE_SALARY
where salary>60000;

select * from high_paid_employee;

-- temporary table

create temporary table temp_high_paid_employee 
( employee_id int,
  salary decimal(10,2));
insert into temp_high_paid_employee 
SELECT 
     employee_id,salary
FROM EMPLOYEE_SALARY
where salary>60000;
select* from temp_high_paid_employee;

-- CTE common table expression

with high_salary_cte as(
SELECT 
     employee_id,salary
FROM EMPLOYEE_SALARY
where salary>60000)
 select * from high_salary_cte;

-- another example 
with avgsalaryoccu as(
 select employee_id,occupation,avg(salary) as avgsalary
 from EMPLOYEE_SALARY
 group by occupation
)
select * from avgsalaryoccu;


desc employee_salary

-- 9 primary constraint

-- composite constraints

-- unique constraint

-- not null

-- 9 check

--

-- 10 foreign key #to link betweenn to table

foreign key (driver_id) reference drivers(driver_id) on delete cascade

-- soft delete
use `parks_and_Recreation`
select * from employee_demographics
select * from employee_salary
alter table employee_demographics add column is_delete boolean default false

update employee_demographics 
set is_delete=true
where employee_id>5;

select distinct gender
from employee_demographics
where age=44;

-- 12 aggregation sum,avg,max,min 
-- one or two more aggregation is there groupby will use and if any condition mean HAVING will use


-- 13 case statement 

select employee_id,first_name,salary,
case 
    when salary>=50000 then 'higher pay'
    when salary<50000 then 'lower pay'
else 'no data'
end as pay
from employee_salary;

-- null concept or handling

select count(*) from employee_salary 
where dept_id is null;

-- coalesce ifnull nvl in oracle

-- view in sql easy way to show

create view dept_id_isnull as
select count(*) from employee_salary 
where dept_id is null;

select * from dept_id_isnull

-- string handling