-- 9.PRACTICE:ORDER BY :
--1. Write a SQL query to retrieve all the records with joining_date sorted in descending order.
SELECT *FROM employees 
ORDER BY joining_date desc;
--2.Write an SQL query to retrieve all records from employee table and sort them by last name in ascending order
SELECT *FROM employees 
ORDER BY last_name;
--OR
SELECT *FROM employees 
ORDER BY last_namE ASC;

--3. Retrieve emp_no, first_name, gender and salary from the employee
-- table whose salary is not NULL and sort them by gender in ascending order, then by first name in ascending order.
SELECT emp_no, first_name, gender,salary FROM employees 
WHERE salary IS NOT NULL 
ORDER BY gender ,first_name;
--4. Get all those employee from the employee table whose emp_no is
-- between 1011 and 1020 and sort them by emp_no in descending order
SELECT *FROM employees
WHERE emp_no between 1011 AND 1020 
order by emp_no desc;
--5. Write a SQL query to retrieve unique First name and sort First Name in ascending order
SELECT distinct first_name 
from employees
order by first_name;
-- 6. Retrieve emp_no, first_name, department and birth_date from the employee table whose department contains only two character and sort them by department in ascending order 
--then by birth_date in descending order.
SELECT emp_no, first_name, department, birth_date 
FROM employees
WHERE LENGTH(department) = 2
ORDER BY department ASC, birth_date DESC;
