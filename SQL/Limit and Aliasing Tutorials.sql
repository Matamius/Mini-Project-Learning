select * 
from employee_demographics
order by age desc
limit 2, 1 ##start at position 2 and take 1 row##
;

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age > 40
;