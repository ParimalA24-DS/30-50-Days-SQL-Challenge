-- II. INTERVIEW QUESTIONS AND ANSWER PART 3 :
-- -- Customer Queries: TABLE3 :--
--Q.1 Count the number of customers in each city.
SELECT *FROM customers;
SELECT city, COUNT(custid) AS customer_count
FROM customers
GROUP BY city;

-- Q.2 Identify customers who have made transactions using PayPal. join use
SELECT * FROM transactions;

SELECT DISTINCT c.custid, c.cust_name ,t.payment_method
FROM customers as c
JOIN transactions as t 
ON c.custid = t.custid
WHERE t.payment_method = 'PayPal';

-- Q.3 Calculate the total amount spent by each customer.
SELECT custid, SUM(amount) AS total_spent
FROM transactions
GROUP BY custid;

-- Q.4 Update the email of customer with ID 204 to 'new_email@example.com'.
UPDATE customers 
SET email='new_email@example.com'
WHERE custid= 204;
SELECT *FROM customers 
where custid=204;
-- Q.5 Delete customers who have not made any transactions.
-- Using subquery 
DELETE FROM customers
WHERE custid NOT IN (SELECT custid FROM transactions);
-- this query results in DELETE 0, it means that all customers have made transactions, 
-- so there were no customers to delete.
DELETE FROM customers
WHERE custid IN (
    SELECT c.custid
    FROM customers c
    LEFT JOIN transactions t ON c.custid = t.custid
    WHERE t.custid IS NULL
);


