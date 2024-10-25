-- PRACTICE 2-- INSERT            (codera)
--1. Insert one record in “order_demo” table.
INSERT INTO order_demo (id_no, prod_name, order_date, price, qty) 
VALUES (1, 'pen', '2024-01-01', 2.05, 3);
ALTER TABLE order_demo 
ALTER COLUMN price TYPE NUMERIC(6, 4);
--2 .Insert minimum 5 records at once in “order_demo” table
INSERT INTO order_demo
VALUES(2,'pencil','2024-01-02',1.0,5),
(3,'Eraser','2024-02-03',3.0,6),
(4,'sharpener','2024-01-04',4.0,8),
(5,'paper','2024-02-02',1.0,10),
(6,'crayons','2024-01-04',10.0,6);
SELECT *FROM order_demo;
-- 3.Insert 2 records only into id, Product name and Price column.
INSERT INTO order_demo (id_no,prod_name,price)
VALUES(7,'scale',5);
