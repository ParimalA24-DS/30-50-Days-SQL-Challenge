-- 5. SQL Practice Questions":AND,OR ,not 
--1. Write a query to display all the records of the employee who either belong to ‘HR’ department or ‘Marketing’ department
SELECT *FROM employees;
SELECT *FROM employees
WHERE department ='HR'OR department='Marketing';
-- 2.Write a query to get the emp_no, first_name and salary of the
--employee whose emp_no is more than 1010 and salary is also more than 40000.
SELECT emp_no,first_name,salary  from employees 
where emp_no>1010 AND salary>40000;
-- 3. Write a query to display all the records of the employee whose
-- gender is Female and they don’t belong to ‘IT’ department.
SELECT *FROM employees 
where gender='F' and department!='IT';
--
4. Write a query to get emp_no, department, salary and joining_date of  , 
-- the employee who either joined the company after 1 April 2020 or who has salary below 33000.
SELECT emp_no,department,salary ,joining_date from employees 
where joining_date>'2020-04-01' OR salary<33000;
--5. Write a query to get all the records of the employee whose gender is
-- Male and their department should either be ‘Business Development’ or ‘Marketing’ or ‘Finance’.
SELECT *FROM employees 
WHERE gender ='M' AND 
department IN ('Business Development' , 'Marketing' , 'Finance');

-- 6.Write a query to get emp_no, first_name and birth_date of the
-- employee whose emp_no is below 1020 and birth_date should not be more than 9 March 1999
SELECT emp_no,first_name,birth_date  from employees
WHERE emp_no<1020 and birth_date<'1999-03-09';
--7.Write a query to display all the records of the employee whose first
-- name is ‘David’ or ‘Mary’ and last name should not be ‘Gill’
SELECT * 
FROM employees 
WHERE first_name IN ('David', 'Mary') 
AND last_name <> 'Gill';
