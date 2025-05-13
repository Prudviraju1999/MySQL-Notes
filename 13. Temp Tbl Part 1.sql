-- Temporary Tables

create temporary table temp_tbl
(
first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100)
);

insert into temp_tbl
values('Prudvi', 'Raju', 'Matrix');

select *
from temp_tbl;

create temporary table salary_over_50k
select *
from employee_salary
where salary > 50000;

select *
from salary_over_50k;