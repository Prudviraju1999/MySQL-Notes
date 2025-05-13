-- Stored Procedures

select *
from employee_salary
where salary > 50000;

create procedure large_salaries()
select *
from employee_salary
where salary > 50000;

call large_salaries2();

-- execute separately because of symbom ;
create procedure large_salaries2()
select *
from employee_salary
where salary > 50000;
select *
from employee_salary
where salary > 10000;


DELIMITER $$
create procedure large_salaries3()
BEGIN
	select *
	from employee_salary
	where salary > 50000;
	select *
	from employee_salary
	where salary > 10000;
END $$
DELIMITER ;

call large_salaries3();


-- Passing Parameters
DELIMITER $$
create procedure large_salaries5(emp_id INT)
BEGIN
	select salary
	from employee_salary
	where employee_id = emp_id;
END $$
DELIMITER ;

call large_salaries5(1);