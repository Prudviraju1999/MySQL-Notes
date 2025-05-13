-- CTEs

SELECT gender, AVG(salary), MAX(salary), min(salary),count(salary)
FROM employee_demographics dem
JOIN employee_salary sal 
	ON dem.employee_id = sal.employee_id
GROUP BY gender;

with CTE_table as
(
	SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, min(salary) min_sal,count(salary) count_sal
	FROM employee_demographics dem
	JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id
	GROUP BY gender
)
select	avg(avg_sal)
from CTE_table;

-- Subquery

select	avg(avg_sal) 
from
(
	SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, min(salary) min_sal,count(salary) count_sal
	FROM employee_demographics dem
	JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id
	GROUP BY gender
) subquery;


-- we con't use CTE later in code, because it's not stored in DB
select	avg(avg_sal)
from CTE_table;


-- We can create and use multiple CTEs in same query
with CTE_tbl as
(
	SELECT employee_id, gender, birth_date
	FROM employee_demographics
	where birth_date > '1985-01-01'
),
CTE_tbl2 as
(
	SELECT employee_id, salary
	FROM employee_salary 
	where salary > 50000
)
select	*
from CTE_tbl
join CTE_tbl2 
	on CTE_tbl.employee_id = CTE_tbl2.employee_id;
    
    
-- Overriting Column names
with CTE_table (Gender,AVG_Sal,MAX_sal, MIN_sal, COUNT_sal)  as
(
	SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, min(salary) min_sal,count(salary) count_sal
	FROM employee_demographics dem
	JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id
	GROUP BY gender
)
select	*
from CTE_table;
