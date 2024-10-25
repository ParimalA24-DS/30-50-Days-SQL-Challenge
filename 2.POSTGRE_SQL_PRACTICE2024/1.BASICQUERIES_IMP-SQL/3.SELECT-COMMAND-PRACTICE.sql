-- PRACTICE 3: SELECT 
--CREATE EMP1 TABLE AND INSERT VALUES:
CREATE TABLE emp1(
id int PRIMARY KEY,
name varchar(25) NOT NULL,
salary int,
department varchar(50),
dob date );

INSERT INTO emp1 VALUES
(101, 'Jack', 2000, 'HR', '1997-05-19'),
(102, 'Jack', NULL, 'HR', NULL),
(103, 'Mack', 6000, 'Developer', '1997-03-10'),
(104, 'Peter', 4000, 'Tester', '1998-07-16'),
(105, 'Tom', 3000, 'HR', '1998-11-03'),
(106, 'Leo', 2500, 'Developer', '1997-10-10'),
(107, 'Roger', 5300, 'Accounts', '1997-06-17'),
(108, 'Mike', 2000, NULL, '1998-03-09'),
(109, 'Paul', 4800, 'Developer', '1998-12-28'),
(110, 'Hannah', 2000, 'Accounts', '1999-09-26');
--1. Write a query to display all the records of emp1 Table
SELECT *FROM emp1;
-- 2.Write a query to display unique salary of employee table
SELECT DISTINCT(salary) from emp1
where salary is not null;
--3.Write a query to display all data of name and dob column of employee table
SELECT name,dob from emp1;
--4. Write a query to display Id , name and the annual salary with the
--column name 'annual_salary' from the employee table
SELECT 
    id, name, 
    salary * 12 AS annual_salary 
FROM emp1;
--5.Write a query to display unique combination of salary and
-- department of the employee table
SELECT DISTINCT salary, department 
FROM emp1
WHERE salary IS NOT NULL;
--or :
SELECT salary, department 
FROM emp1
WHERE salary IS NOT NULL
GROUP BY salary, department;

--6. Write a query to get id and display Name with salary in parentheses()
-- from the emp1 table and the resultant column name should be emp_detail.
SELECT 
    id, 
    CONCAT(name, ' (', salary, ')') AS emp_detail 
FROM emp1;

