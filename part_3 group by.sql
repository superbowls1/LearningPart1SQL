#GROUP By

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
group by gender;## top and bottom must match makes all the rows together


SELECT first_name 
FROM employee_demographics
group BY gender; ## top and bottom dont match wotn work

SELECT gender, avg(age) ## selects gender and averages the age
from employee_demographics
group by gender; ## this wil give average of males vs female
 
 
 SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary; # groups occupation but now it wont because slary for office manager is different if it was the same they would be together

SELECT gender, avg(age), MAX(age), MIN(AGE), COUNT(Age)
from employee_demographics
GROUP by gender ## shows highest and lowest of age as well
;# the count will also tell us how many of each there are so you know the total

## order by


SELECT *
from employee_demographics
ORDER BY first_name; ## this makes its alphabetical order

## or you can do it opposite way
SELECT * 
From employee_demographics
order by first_name DESC;

SELECT *
FRom employee_demographics
order by gender, age; # orders female first because thats in order and then age as well then goes to men
## if you do DESC After age it only impacts age not geneder

SELECT *
From employee_demographics
order by age, gender; #done like this no gender impact because age is going first and isnt unique



