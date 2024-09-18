-- -----------------------------------------------
-- Business Problems & Answers -I
-- -----------------------------------------------
-- II INTERVIEW QUESTIONS AND ANSWER :
-- Q.1 Find the employees with the highest salary.
-- USING max()
SELECT  MAX(salary)
FROM employees;
-- OR 
SELECT *FROM employees
where salary =(SELECT Max(salary) FROM Employees );
-- (The subquery (SELECT MAX(salary) FROM employees) is executed first.
--Select all employees who earn that maximum salary)
-- OR USING LIMIT AND ORDER BY 
SELECT *FROM Employees 
ORDER BY salary desc
limit 1;
-- Using window function 
SELECT *
FROM (
    SELECT salary, ROW_NUMBER() OVER (ORDER BY salary DESC NULLS LAST) AS rank
    FROM employees
) AS ranked_salaries
WHERE rank = 1;


-- -- Q.2 Find the employees with the 2nd highest salary.
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
-- using max() and subqueries 
SELECT MAX(salary) 
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);
-- Using Window functiosn 
SELECT *
FROM (
    SELECT salary, ROW_NUMBER() OVER (ORDER BY salary DESC NULLS LAST) AS rank
    FROM employees
) AS ranked_salaries
WHERE rank = 2;

-- --- Q2. Find the all the employee who are from IT?
SELECT *From employees 
where dept='IT';
-- OR using IN()
SELECT * 
FROM employees 
WHERE dept IN ('IT');
-- --- Q3. Find the all the employee who's salary is >60k 
SELECT *FROM Employees 
Where salary >60000;
SELECT count(*) FROM Employees 
Where salary >60000; # count ()

--  -- Q4. List employees hired after January 1, 2021.
SELECT *FROM Employees
WHERE hireDate>'2021-01-01';

-- Q5. Calculate Average salary of each departement 
SELECT dept, AVG(salary) AS average_salary
FROM employees
GROUP BY dept
-- or 
SELECT dept, AVG(salary) AS average_salary
FROM employees
WHERE dept IS NOT NULL AND salary IS NOT NULL
GROUP BY dept; #for no null at output 

-- Q6. Update the salary of employee where ID 3 to 620
UPDATE Employees
SET Salary =620
WHERE ID=3;

-- Q7. Delete employee with lowest salary 
DELETE FROM Employees
WHERE salary = (SELECT MIN(salary) FROM employees);
-- or with clause 
WITH min_salary_employee AS (
    SELECT ID
    FROM employees
    ORDER BY salary ASC
    LIMIT 1
)
DELETE FROM employees
WHERE ID IN (SELECT ID FROM min_salary_employee);


