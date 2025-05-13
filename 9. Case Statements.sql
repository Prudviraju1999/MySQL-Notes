-- Case Statements

select first_name, last_name,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age > 50 then "On Death's Door"
end age_bracket
from employee_demographics;

-- Pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

select first_name
, Last_name
,salary
, Case
	when salary < 50000 then salary* 0.05
    when salary > 50000 then salary* 0.07
end increase
, case
	when dept_id = 6 then salary* 0.1
end bonus
from employee_salary;

select *
from employee_salary sal
join parks_departments det
	on sal.dept_id = det.department_id
where department_name = 'Finance'
;

-- Video Time 1:55:40