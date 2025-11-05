-- WHERE Clause

Select *
From employee_salary
Where first_name = 'Leslie'
;

Select *
From employee_salary
Where salary <= 50000
;
select * 
from employee_demographics
Where gender = 'Female'
;

select * 
from employee_demographics
where (first_name = 'Leslie' and age = 44) 
or age > 55
;

select *
from employee_demographics
where first_name like 'a___%'
;