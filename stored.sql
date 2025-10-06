use parks_and_recreation;


create procedure large_salaries()
select * from employee_salary
where salary > 50000;

call large_salaries();




delimiter $$
create procedure store_values2()
begin
     select * from employee_salary
	 where salary>50000;
     select * from employee_salary
     where salary>70000;
end $$
delimiter ;

call store_values2();



delimiter $$
create procedure store_values5(akash int)
begin
     select first_name,salary from employee_salary
	 where employee_id = akash
     ;
     
end $$
delimiter ;
call store_values5(1) 


