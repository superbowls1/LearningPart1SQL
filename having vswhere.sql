# having vs where
#Where clause is sued to filter records from a table 
#having filter records from groups based on given conditions
SELECT Gender, avg(age)
from employee_demographics
WHERE AVG(age)> 40
group by Gender; ## issue becauses we are grouping  after other way around

SELECT Gender, avg(age)
from employee_demographics
group by gender
having avg(age)>40; 

SELECT occupation, avg(salary)
FROM employee_salary
group by occupation;# gives average of the workers


SELECT occupation, avg(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
group by occupation;
# gives average salary of the managers

SELECT occupation, avg(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
group by occupation
HAVING avg(salary)> 75000; # now only has more 75k managers where is used more


