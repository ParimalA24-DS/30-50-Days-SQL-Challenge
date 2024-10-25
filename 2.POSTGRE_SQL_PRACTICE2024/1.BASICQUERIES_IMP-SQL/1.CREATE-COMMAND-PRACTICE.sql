-- PRACTICE 1:SELECT 
-- 1. Write a query to create a table  named “store”.
CREATE TABLE store 
(
  id int not null
)
--2.Write a query to create a table in ‘store’ Database with name
-- “orderDemo” which will have 5 columns
CREATE TABLE order_demo(
	id_no int primary key ,
	prod_name varchar(20) not null ,
	order_date date ,
	price decimal(2,4),
	qty INT
);
SELECT *FROM order_demo;

--3.Write a query to create a new table named “orderDetail” which is
-- the exact copy of “orderDemo” Table.
CREATE TABLE order_detail as SELECT *FROM order_demo;
SELECT *FROM order_detail;

--4. Write a query to delete the “order_detail” table.
DROP TABLE order_detail;
