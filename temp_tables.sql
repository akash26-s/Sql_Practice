-- temporary tables

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
lats_name varchar(50),
movie_name varchar(100)
);

select * from temp_table;

create temporary table salary_over_50k
select * from
employee_salary
where salary>50000; 


select * from salary_over_50k