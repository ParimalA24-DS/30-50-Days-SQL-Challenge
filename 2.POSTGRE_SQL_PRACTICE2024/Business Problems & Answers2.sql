-- II INTERVIEW QUESTIONS AND ANSWERPART 2 :
-- prdoucts TABLE2 :
SELECT *FROM products;
-- Q1.Calculate total number of product we have in products table.
SELECT COUNT(productid) as totalprods
from products;  -- 5

-- Q2. Identify the products in stock for each category 
SELECT category, 
       productname
FROM products
WHERE quantity_in_stock > 0
ORDER BY category;

-- Q3.Find the total value of products in stock for each category
SELECT category ,
       SUM(price * quantity_in_stock) AS total_value
FROM products
GROUP BY category;

-- Q4.  Update the price of all products in the 'Clothing' category to 10% higher
UPDATE products 
SET price=price*1.10
WHERE category ='Clothing';

-- Q5. Delete products with a price less than 50.
DELETE FROM products
WHERE price < 50;
-- TO CHECK
SELECT *FROM products
WHERE price>50;
