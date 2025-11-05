select *
from employee_demographics
where employee_id in 
					(select employee_id
						from employee_salary
                        where dept_id = 1
)
;

select first_name, salary, (select AVG(salary) from employee_salary) as Avg_salary
from employee_salary
group by first_name, salary;

select gender, avg(age), MAX(age), MIN(age), COUNT(age)
from employee_demographics
group by gender;


select avg(`MAX(age)`)
from (select gender, avg(age), MAX(age), MIN(age), COUNT(age)
from employee_demographics
group by gender) as agg_table;

select avg(max_age)
from (select gender, 
avg(age) as avg_age, 
MAX(age) as max_age,
MIN(age) as min_age, 
COUNT(age) as count_age
from employee_demographics
group by gender) as agg_table;

