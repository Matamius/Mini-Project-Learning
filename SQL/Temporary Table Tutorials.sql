
create temporary table temp_table
(
first_nam varchar(50),
last_name varchar(50),
favourite_movie varchar(200)
)
;

select *
from temp_table;

insert into temp_table
values('Alex', 'Freberg', 'Lord of the Rings: The Two Towers');




select *
from employee_salary
;

create temporary table salary_over_50k_temp
(
select *
from employee_salary
where salary >= 50000
)
;


select *
from salary_over_50k_temp;













