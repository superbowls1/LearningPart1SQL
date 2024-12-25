#where clause

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie' #= comparison operator
;
SELECT *
FROM  employee_salary
WHERE salary > 50000 #gives everything greater than 50k
;
SELECT *
FROM employee_salary
where salary >=50000; # gives everything 50k = to

SELECT * 
FROM employee_salary
where salary <50000; #Gives everything less than 50k

SELECT *
FROM employee_demographics
WHERE gender = 'Female' #shows women workers
;
SELECT *
FROM employee_demographics
WHERE gender != 'Female'; # non female workers

SELECT *
FROM employee_demographics
WHERE birth_date >' 1985-01-01';


# -- and or not -- logical operators
SELECT *
From employee_demographics
where birth_date >' 1985-01-01'
and gender= 'male';
# shows if they both have the exact same thing

SELECT *
From employee_demographics
where birth_date >' 1985-01-01'
or gender= 'male'; # or if they have one of the other


SELECT *
From employee_demographics
where birth_date >' 1985-01-01'
or not gender= 'male';
# not both


SELECT * 
from employee_demographics
where (first_name= 'Leslie' and age=44) OR age>55;
# this does both if inside is false it still shows the second one if someone is older than age 55

## like statement
## special characters % means anything and _ a specific value

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'JER%'; # is like JER and has anything after it will be return you can do % before as well

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%ER%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';## all names that start with a


SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'; # must have 2 chars after it

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'; ## have 4 chars and then after you can have anything

