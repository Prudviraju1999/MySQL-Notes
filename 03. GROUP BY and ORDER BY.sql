-- GROUP BY

select gender, avg(age) as Ave_Age
from employee_demographics
group by gender;

select occupation, salary
from employee_salary
group by occupation, salary;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;

-- ORDER BY

select *
from employee_demographics
order by first_name desc
;


select *
from employee_demographics
order by gender, age desc
;

select *
from employee_demographics
order by age, gender desc
; -- Useless, Choose top level first 

-- Ordering by column positions 

select *
from employee_demographics
order by 5,4 desc
;  -- Not Recomended

