-- Window functions

SELECT 
    gender, AVG(salary)
FROM
    employee_demographics dem
        JOIN
    employee_salary sal ON dem.employee_id = sal.employee_id
GROUP BY gender;


select dem.first_name, dem.last_name, gender, 
avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
    
select dem.first_name, dem.last_name, gender, salary,
sum(salary) over(partition by gender order by dem.employee_id)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
    

select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
row_number() OVER(partition by gender order by salary desc) as row_num,
rank() OVER(partition by gender order by salary desc) as rank_num,
dense_rank() OVER(partition by gender order by salary desc) as dense_rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
    
-- Intermediate Completed