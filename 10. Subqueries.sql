-- Subqueries

select *
from employee_demographics
where employee_id in (
	Select	employee_id
    from employee_salary
    where dept_id = 1
);

select first_name, salary, 
(select avg(salary)
from employee_salary
)
from employee_salary;


select gender, count(age), min(age), avg(age), max(age) 
from employee_demographics
group by gender;

select avg(max_age)
from
(
	select gender, count(age), min(age), avg(age), max(age) max_age 
	from employee_demographics
	group by gender
) as Aff_tbl


