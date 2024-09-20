--  TASK:INSERT UPDATE DELETE DML:5


-- Insertion Tasks:
--1. Insert a new employee with the following details: ID = 101, name = 'John Doe', Dept = 'Marketing', Salary = 60000, HireDate = '2022-04-01'.

SELECT * FROM Employees;
INSERT INTO employees (id, name, dept, salary, hiredate)
VALUES (101, 'John Doe', 'Marketing', 600000, '2022-04-01');
-- check duplicates :
SELECT name,dept, COUNT(*)
FROM employees
GROUP BY name, dept
HAVING COUNT(*) > 1;

-- 2. Add a new product with the following details: ProductID = 11, productname = 'Smartphone', Category = 'Electronics', Price = 6999.99, Quantity = 100
SELECT *FROM products;
INSERT INTO products
values (11,'smartphone','electronics',6999.9,100);

--  -- Update Tasks:
-- 1. Increase the salary of all employees in the 'Marketing' department by 20%.
SELECT *FROM employees;
Update employees
SET salary =salary*1.20
where dept='Marketing';
-- 2.Update the price of the product with ProductID = 105, to 99.99.
UPDATE products
SET price=99.99
WHERE productid=105;

-- Deletion Tasks:
-- 1. Delete the employee with EmployeeID = 102.
DELETE FROM employees
where id=102;

-- 2. Remove all products with a Quantity less than 60
SELECT *FROM products;
DELETE FROM products 
WHERE quantity_in_stock<60;
