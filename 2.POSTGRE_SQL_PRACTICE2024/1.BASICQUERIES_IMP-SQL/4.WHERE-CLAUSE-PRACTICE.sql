--PRACTICE 4: WHERE CLAUSE:
-- 1.Write a query to display all the records of the employees whose joining_date is after 20 March 2022.
SELECT *FROM employees;
SELECT *FROM employees 
where  joining_date>'2022-03-20'
-- 2. Write a query to display emp_no, first_name, last_name, department of the employee whose department is ‘Finance
SELECT emp_no,first_name,last_name,department  from employees 
where department='Finance';
--3. Write a query to display emp_no, salary, department of the employee whose salary is below 35000.
SELECT emp_no,salary,department  from employees 
where salary<35000;
-- 4. Write a query to display all the records of the employees whose birth_date is after or equal to 24 January 1998.
SELECT  *from employees
where birth_date >='1998-01-24';
-- 5. Write a query to display emp_no, first_name, department of the employee whose department is other than ‘IT’.
SELECT emp_no,first_name,department  from employees 
where department <>'IT';
--OR
 SELECT emp_no,first_name,department  from employees 
where department !='IT';

--6. Write a query to display all the records of the employee whose emp_no is 1010 or below 1010.
SELECT *FROM employees 
where emp_no <=1010;

--7. Write a query to display unique first_name of the employee whose gender is Male.
SELECT distinct (first_name)FROM employees 
where gender='M';

SELECT first_name 
FROM employees 
WHERE gender = 'M'
GROUP BY first_name;
-- 8.Write a query to display emp_no, first_name , salary and add 10000 to the salary of the employee whose salary is below 25000 and
--display final salary as column name ‘final_salary’.
SELECT emp_no,
       first_name,
       salary,
       salary + 10000 AS final_salary
FROM employees
WHERE salary < 25000;
-- 9. Write a query to display emp_no and full name of the employee with the column name as ‘full_name’ and the emp_no should be
-- more than 1015.
SELECT emp_no,
       CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE emp_no > 1015;

