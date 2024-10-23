-- ALTER COMMAND PRACTICE
CREATE TABLE products (
 prod_id char(10) NOT NULL,
 prod_name char(255) NOT NULL,
 price decimal(8,2) NOT NULL,
 quantity int,
 PRIMARY KEY (prod_id)
);
SELECT *FROM products;
-- Insert values 

INSERT INTO products (prod_id, prod_name, price, quantity)
VALUES 
    ('BR01', '8 inch teddy bear', 5.99, 8),
    ('BR02', '12 inch teddy bear', 8.99, 12),
    ('BR03', '18 inch teddy bear', 11.99, 18),
    ('BNBG01', 'Fish bean bag toy', 3.49, 7),
    ('BNBG02', 'Bird bean bag toy', 3.49, 20),
    ('BNBG03', 'Rabbit bean bag toy', 3.49, 9),
    ('RGAN01', 'Raggedy Ann', 4.99, 15),
    ('RYL01', 'King doll', 9.49, 12),
    ('RYL02', 'Queen doll', 9.49, 26);

--1. RENAME TABLE NAME :
ALTER TABLE products 
RENAME TO prod;
SELECT *FROM prod;
--2. ADD NEW COLUMN NAME :
ALTER TABLE prod
add city varchar(10);
-- Add a new column named “description” of type VARCHAR(200) to an
-- existing table named prod?
ALTER TABLE prod
ADD description varchar(200);
-- 3. Rename column in a table :In a table rename “prod_id” column name to “p_id”
ALTER TABLE prod
RENAME COLUMN prod_id to p_id;
-- 4.  Modify data type and constraints   
-- How can you modify the data type of the “prod_name” column from
-- char to varchar(22) in the products table?
/* ALTER  TABLE prod
MODIFY city char(20); -- mysql*/
ALTER TABLE prod
ALTER COLUMN city TYPE CHAR(20);

ALTER TABLE prod
ALTER COLUMN prod_name TYPE VARCHAR(22);
SELECT *FROM prod;

-- 5. drop column name 
-- Delete a column named “city” from the  table
ALTER TABLE prod
DROP COLUMN city;
-- q.Suppose you have a table named products with a column named
-- price. How do you set a default value of '20' for the price column?
ALTER TABLE prod
ALTER COLUMN price SET DEFAULT 20;


