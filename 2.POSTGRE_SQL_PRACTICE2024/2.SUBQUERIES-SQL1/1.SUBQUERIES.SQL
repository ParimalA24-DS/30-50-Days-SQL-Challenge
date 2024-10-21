-- Subqueries in sql QA:
-- EMPLOYEE TABLE
CREATE TABLE employees
(
emp_no INT NOT NULL,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
salary INT,
birth_date DATE NOT NULL,
gender CHAR(1) NOT NULL CHECK (gender IN ('M', 'F')),
joining_date DATE NOT NULL,
department VARCHAR(20),
PRIMARY KEY (emp_no)
);
-- Insert :
INSERT INTO employees (emp_no, first_name, last_name, salary, birth_date, gender, joining_date, department) VALUES
(1, 'Ravi', 'Kumar', 50000, '1992-01-15', 'M', '2020-03-01', 'Finance'),
(2, 'Suman', 'Sharma', 60000, '1989-05-21', 'F', '2018-07-10', 'Marketing'),
(3, 'Vikram', 'Singh', 55000, '1990-11-12', 'M', '2019-01-05', 'IT'),
(4, 'Anjali', 'Mehta', 62000, '1994-08-19', 'F', '2021-02-25', 'HR'),
(5, 'Rajesh', 'Verma', 48000, '1991-03-02', 'M', '2020-10-15', 'Finance'),
(6, 'Priya', 'Chauhan', 58000, '1995-04-10', 'F', '2019-09-30', 'Sales'),
(7, 'Amit', 'Yadav', 53000, '1988-12-23', 'M', '2022-01-20', 'Operations'),
(8, 'Neha', 'Kapoor', 61000, '1993-06-07', 'F', '2020-05-17', 'IT'),
(9, 'Sunil', 'Patel', 49000, '1992-10-11', 'M', '2017-12-05', 'HR'),
(10, 'Kavita', 'Nair', 67000, '1991-09-25', 'F', '2018-03-10', 'Marketing');
-- Types of subqueries 
-- Scalar Subqueries retunrn only single row ,using wiht where /having with agrregate fucntion mostly
-- Q. 1. finds all employees whose salary is less than the average salary of all employees in the table.
SELECT *FROM employees  
WHERE 
salary<(select avg(salary)from employees)
--Q2.finds all employees whose salary is greater than the average salary of all employees in the table.
SELECT *FROM employees  
WHERE 
salary>(select avg(salary)from employees);

-- Multiple subqueries :Return multiple rows uisng IN,NOT IN,ALL,ANY
-- Q.Fetch the name of employee  who work in deparment with more than 2 employees 
SELECT first_name ,department 
from employees 
where department IN(SELECT department 
from employees
group by department
Having count(*)>2);   -- The inner query selects departments that have more than 2 employees using GROUP BY and HAVING.


-- 3. Correlated subqueries:
-- Q1. Write a query to retrieve employees whose salary is greater than the average salary of their department.
SELECT *FROM EMPLOYEES e1
where salary>(SELECT AVG(salary) from employees e2
where e1.department=e2.department);

-- It uses a correlated subquery, 
-- where the inner query depends on the outer query to calculate the average salary for each department.
