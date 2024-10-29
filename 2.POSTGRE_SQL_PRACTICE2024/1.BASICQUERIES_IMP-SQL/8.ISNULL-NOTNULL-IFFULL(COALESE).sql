-- 8.SQL Practice Questions :IS NULL | IS NOT NULL | IFNULL()
-- IS NULL AND IS NOT NULL IN both are same dbs
--Use IFNULL() in MySQL and COALESCE() in PostgreSQL for handling NULL values.
--1. Display all the details of the employees whose emp_no is more than 1020 and salary is not available
SELECT *FROM employees 
WHERE emp_no >1020 AND salary IS NULL;

--2. Retrieve those employee whose last_name is null.
SELECT last_name FROM employees 
where last_name is null;
--3.Retrieve emp_no, first_name, salary and department of those
-- employees who works in any department
SELECT emp_no,first_name,salary from employees
WHERE department IS NOT NULL;
--4.Get emp_no, first_name , salary and the annual salary of the employees
-- as column name “annual salary”. If salary is not available, then display “NA” in result set.
SELECT 
    emp_no, 
    first_name, 
    COALESCE(salary::TEXT, 'NA') AS salary, 
    COALESCE((salary * 12)::TEXT, 'NA') AS "annual salary" 
FROM employees;

/* in mysql 
SELECT 
    emp_no, 
    first_name, 
    IFNULL(salary, 'NA') AS salary, 
    IFNULL(salary * 12, 'NA') AS `annual salary`
FROM employees; */
--5. Write a query to retrieve those employees who is Female and who doesn’t belong to any department.
SELECT * 
FROM employees
WHERE gender = 'F' 
  AND department IS NULL;

