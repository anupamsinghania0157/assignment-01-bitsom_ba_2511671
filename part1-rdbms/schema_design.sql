-- Drop tables if exist
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS sales_reps;

CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE sales_reps (
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL,
    region VARCHAR(50)
);

CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20),
    rep_id INT,
    order_date DATE,
    status VARCHAR(20),
    total_amount DECIMAL(12,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_reps(rep_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id VARCHAR(20),
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
('CUST001','Amit Sharma','Mumbai'),
('CUST002','Riya Kapoor','Delhi'),
('CUST003','Karan Mehta','Bangalore'),
('CUST004','Sneha Iyer','Mumbai'),
('CUST005','Rahul Verma','Chennai');

INSERT INTO products VALUES
(1,'Laptop','Electronics',50000),
(2,'Mobile','Electronics',20000),
(3,'Shoes','Fashion',3000),
(4,'Watch','Accessories',5000),
(5,'Backpack','Fashion',1500);

INSERT INTO sales_reps VALUES
(1,'Raj Singh','West'),
(2,'Simran Kaur','North'),
(3,'Aman Gupta','South'),
(4,'Neha Jain','West'),
(5,'Vikas Sharma','East');

INSERT INTO orders VALUES
('ORD1001','CUST001',1,'2023-01-01','Delivered',70000),
('ORD1002','CUST002',2,'2023-02-10','Shipped',20000),
('ORD1003','CUST003',3,'2023-03-15','Processing',3000),
('ORD1004','CUST004',4,'2023-04-20','Delivered',5000),
('ORD1005','CUST005',5,'2023-05-25','Cancelled',1500);

INSERT INTO order_items VALUES
(1,'ORD1001',1,1,50000),
(2,'ORD1001',2,1,20000),
(3,'ORD1002',2,1,20000),
(4,'ORD1003',3,1,3000),
(5,'ORD1004',4,1,5000);

