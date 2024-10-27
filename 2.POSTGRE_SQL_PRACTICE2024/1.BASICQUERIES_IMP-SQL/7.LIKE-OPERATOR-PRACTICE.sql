-- 7.Practice Questions – LIKE & Wildcard
-- 1. Select all employees whose first name ends with 'y’
SELECT *FROM employees ;
SELECT *FROM employees
where first_name LIKE '%y';
--2.Select all employees whose date of birth is in April
SELECT * 
FROM employees 
WHERE EXTRACT(MONTH FROM birth_date) = 4;
--OR USING LIKE :
SELECT *
FROM employees
WHERE birth_date LIKE '____-04-%';

--3. Select emp_no , first name and department of the employees whose
-- department does not contains the word ‘ing’.
SELECT emp_no,first_name,department from employees
WHERE department NOT LIKE '%ing%';
-- 4. Select all employees whose last name starts with ‘w’ and has
-- emp_no more than 1015.
SELECT *FROM employees
WHERE last_name LIKE 'w%' AND emp_no>1015;
SELECT * FROM employees
WHERE last_name ILIKE 'w%' AND emp_no > 1015; --case sensitive ILIKE
--5.Select first_name and last_name of the employee with a first_name
--that start with “j” and are at least 4 characters in length.
SELECT first_name ,last_name FROM employees
WHERE first_name LIKE 'J___%';
--or 
SELECT first_name, last_name 
FROM employees 
WHERE first_name ILIKE 'J___%';
--6. Select all employees whose last name contains ‘ill’ and has salary
-- between 30000 and 50000.
SELECT *FROM employees 
WHERE last_name LIKE '%ill%' and salary between 30000 AND 50000;
--7. Select emp_no, first_name and last_name of the employee whos
-- first name starts with 'S' and whose last name contains at least two 'l' characters.
SELECT emp_no, first_name, last_name FROM employees
WHERE first_name LIKE 'S%' AND last_name LIKE '%l%l%';

--8. Select all employees whose joining date is either June 2022 or June
-- 2021 and emp_no is not between 1011 and 1020.
SELECT * 
FROM employees
WHERE 
  (joining_date BETWEEN '2021-06-01' AND '2021-06-30'
   OR joining_date BETWEEN '2022-06-01' AND '2022-06-30')
  AND emp_no NOT BETWEEN 1011 AND 1020;


