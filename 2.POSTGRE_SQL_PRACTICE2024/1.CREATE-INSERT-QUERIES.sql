-- Create Tables
CREATE TABLE Employees (
    ID INT,
    NAME VARCHAR(20),
    DEPT VARCHAR(25),
    SALARY DECIMAL(10, 2),
    HireDate DATE
);

CREATE TABLE Products (
    ProductID INT,
    Productname VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    quantity_in_Stock INT
);

CREATE TABLE Customers (
    CustID INT,
    Cust_name VARCHAR(50),
    email VARCHAR(55),
    phone_no VARCHAR(10),
    City VARCHAR(20)
);

CREATE TABLE Orders (
    order_id INT,
    custID INT,
    product_id INT,
    order_date DATE,
    quantity_ordered INT
);

CREATE TABLE Transactions (
    Trans_ID INT PRIMARY KEY,
    CustID INT,
    Amount DECIMAL(10, 2),
    Trans_date DATE,
    payment_method VARCHAR(50)
);

-- Insert Data
INSERT INTO Employees (ID, NAME, DEPT, SALARY, HireDate)
VALUES 
    (101, 'Priya', 'IT', 55000, '2024-03-20'),
    (102, 'Rahul', 'IT', 65000, '2024-03-20'),
    (103, 'Alex', 'HR', 45000, '2024-03-20'),
    (104, 'Sam', 'Marketing', 85000, '2024-03-20');

INSERT INTO Products (ProductID, Productname, category, price, quantity_in_Stock)
VALUES 
    (101, 'Laptop', 'Electronics', 1200, 50),
    (102, 'Smartphone', 'Electronics', 800, 100),
    (103, 'Headphones', 'Electronics', 100, 200);

INSERT INTO Customers (CustID, Cust_name, email, phone_no, City)
VALUES 
    (201, 'Alice Johnson', 'alice@example.com', '1234567890', 'New York'),
    (202, 'Bob Smith', 'bob@example.com', '9876543210', 'Los Angeles');

INSERT INTO Orders (order_id, custID, product_id, order_date, quantity_ordered)
VALUES 
    (301, 201, 101, '2022-03-15', 2),
    (302, 202, 103, '2022-03-16', 3);

INSERT INTO Transactions (Trans_ID, CustID, Amount, Trans_date, payment_method)
VALUES 
    (401, 201, 1200, '2022-03-15', 'Credit Card'),
    (402, 202, 1000, '2022-03-16', 'PayPal');

-- Select Data
-- Select from Employees
SELECT * FROM Employees;

-- Select from Products
SELECT * FROM Products;

-- Select from Customers
SELECT * FROM Customers;

-- Select from Orders
SELECT * FROM Orders;

-- Select from Transactions
SELECT * FROM Transactions;
