## limit and aliasing

SELECT *
FROM employee_demographics
limit 3 #GIVES first 3
;
SELECT *
FROM EMployee_demographics
order by age DESC
LIMIT 3; #gives the top 3 oldest 

SELECT *
FROM EMployee_demographics
order by age DESC
LIMIT 2 , 1; #starts at position 2 and goes 1 row after

#aliasing changing the name of column

SELECT gender,  AVG(age) AS avg_age
# changes the name to avg_age
FROM employee_demographics
GROUP by gender
HAVING AVG_AGE >40;
