select gender, avg(salary) as avg_salary
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender;
;

select sal.employee_id, sal.first_name, sal.last_name, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;

select sal.employee_id, sal.first_name, sal.last_name, sal.salary,
sum(salary) over(partition by gender order by sal.employee_id) as rolling_total
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;



select sal.employee_id, sal.first_name, sal.last_name, sal.salary,
row_number() over (partition by gender order by salary desc) as row_num,
rank()over (partition by gender order by salary desc) as rank_num, ##positional
dense_rank()over (partition by gender order by salary desc) as dense_rank_num ##numeric
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;