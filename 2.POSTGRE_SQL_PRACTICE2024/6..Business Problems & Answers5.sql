-- II. INTERVIEW QUESTIONS AND ANSWER PART 4 :
-- -- Order  Queries: TABLE3
SELECT *FROM orders;
--Q.1. Find the total number of orders placed on each date.
SELECT  order_date ,COUNT(order_id)
FROM orders
GROUP BY order_date;

-- Q.2 Identify orders with a quantity_ordered greater than 2.
SELECT *FROM orders ;
where quantity_ordered>2;
-- -- Q.3. Update the order_date of order with ID 304 to '2022-03-21'.
UPDATE orders 
SET order_date='2022-03-21'
WHERE order_id=304;
SELECT *FROM orders  --check update ?
WHERE order_id=304;
-- -- Q.4 Delete orders placed before January 1, 2022.
DELETE from orders
where order_date<'2022-01-01';


-- II. INTERVIEW QUESTIONS AND ANSWER PART 6 :
-- -- Trasnaction  Queries: TABLE5
SELECT *FROM transactions;
--Q.1. Find the average transaction amount for each payment method.
SELECT payment_method ,AVG(amount)
from transactions
GROUP BY payment_method;
-- Q.2 Identify transactions made on March 15,2022
SELECT *FROM transactions 
where trans_date='2022-03-15';
