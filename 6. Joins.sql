-- Joins

-- Inner Join
select * 
from employee_demographics
;

select * 
from employee_salary
;


select dem.employee_id, age, occupation, salary
from employee_demographics dem
inner join employee_salary sal
	on dem.employee_id = sal.employee_id
;

-- Outer Join

select *
from employee_demographics dem
right outer join employee_salary sal        -- Just left/right also fine
	on dem.employee_id = sal.employee_id
;

-- Self join

select emp1.employee_id as emp_santa,
emp1.first_name first_name_santa,
emp1.last_name last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name first_name_emp,
emp2.last_name last_name_emp
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id +1 = emp2.employee_id
;

-- Joining Multiple tables togather

select *
from employee_demographics dem
inner join employee_salary sal
	on dem.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id
;

select *
from parks_departments
;