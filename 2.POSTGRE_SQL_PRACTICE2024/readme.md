# SQL Table Creation and Data Insertion

This SQLFile demonstrates the creation of several tables (Employees, Products, Customers, Orders, and Transactions) using SQL, along with sample data insertion.

# SQL Table Operations

This repository contains SQL scripts for creating tables, inserting data, and selecting data from the tables.

## SQL Operations

### 1. **Create Tables**

- **Employees Table**
    ```sql
    CREATE TABLE Employees (
        ID INT,
        NAME VARCHAR(20),
        DEPT VARCHAR(25),
        SALARY DECIMAL(10, 2),
        HireDate DATE
    );
    ```

- **Products Table**
    ```sql
    CREATE TABLE Products (
        ProductID INT,
        Productname VARCHAR(50),
        category VARCHAR(50),
        price DECIMAL(10, 2),
        quantity_in_Stock INT
    );
    ```

- **Customers Table**
    ```sql
    CREATE TABLE Customers (
        CustID INT,
        Cust_name VARCHAR(50),
        email VARCHAR(55),
        phone_no VARCHAR(10),
        City VARCHAR(20)
    );
    ```

- **Orders Table**
    ```sql
    CREATE TABLE Orders (
        order_id INT,
        custID INT,
        product_id INT,
        order_date DATE,
        quantity_ordered INT
    );
    ```

- **Transactions Table**
    ```sql
    CREATE TABLE Transactions (
        Trans_ID INT PRIMARY KEY,
        CustID INT,
        Amount DECIMAL(10, 2),
        Trans_date DATE,
        payment_method VARCHAR(50)
    );
    ```

### 2. **Insert Data**

- **Insert into Employees**
    ```sql
    INSERT INTO Employees (ID, NAME, DEPT, SALARY, HireDate)
    VALUES 
        (101, 'Priya', 'IT', 55000, '2024-03-20'),
        (102, 'Rahul', 'IT', 65000, '2024-03-20'),
        (103, 'Alex', 'HR', 45000, '2024-03-20'),
        (104, 'Sam', 'Marketing', 85000, '2024-03-20');
    ```

- **Insert into Products**
    ```sql
    INSERT INTO Products (ProductID, Productname, category, price, quantity_in_Stock)
    VALUES 
        (101, 'Laptop', 'Electronics', 1200, 50),
        (102, 'Smartphone', 'Electronics', 800, 100),
        (103, 'Headphones', 'Electronics', 100, 200);
    ```

- **Insert into Customers**
    ```sql
    INSERT INTO Customers (CustID, Cust_name, email, phone_no, City)
    VALUES 
        (201, 'Alice Johnson', 'alice@example.com', '1234567890', 'New York'),
        (202, 'Bob Smith', 'bob@example.com', '9876543210', 'Los Angeles');
    ```

- **Insert into Orders**
    ```sql
    INSERT INTO Orders (order_id, custID, product_id, order_date, quantity_ordered)
    VALUES 
        (301, 201, 101, '2022-03-15', 2),
        (302, 202, 103, '2022-03-16', 3);
    ```

- **Insert into Transactions**
    ```sql
    INSERT INTO Transactions (Trans_ID, CustID, Amount, Trans_date, payment_method)
    VALUES 
        (401, 201, 1200, '2022-03-15', 'Credit Card'),
        (402, 202, 1000, '2022-03-16', 'PayPal');
    ```

### 3. **Select Data**

- **Select from Employees**
    ```sql
    SELECT * FROM Employees;
    ```

- **Select from Products**
    ```sql
    SELECT * FROM Products;
    ```

- **Select from Customers**
    ```sql
    SELECT * FROM Customers;
    ```

- **Select from Orders**
    ```sql
    SELECT * FROM Orders;
    ```

- **Select from Transactions**
    ```sql
    SELECT * FROM Transactions;
    ```

## SQL Script File

For all SQL operations, you can refer to the [create_and_insert.sql](create_and_insert.sql) file.
