-- Limit & Aliasing

select * 
from employee_demographics
order by age desc
limit 2, 3     -- Looking for 3 rows after 2nd position
;

-- Aliasing

select gender, avg(age) ave_age    -- AS is not required
from employee_demographics
group by gender
having ave_age >40
;