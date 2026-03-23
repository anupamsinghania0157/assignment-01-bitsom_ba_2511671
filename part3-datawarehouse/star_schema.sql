-- Drop existing tables
DROP TABLE IF EXISTS fact_sales;
DROP TABLE IF EXISTS dim_date;
DROP TABLE IF EXISTS dim_store;
DROP TABLE IF EXISTS dim_product;

-- Dimension: Date
CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    year INT,
    month INT,
    month_name VARCHAR(20)
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id DATE,
    store_id INT,
    product_id INT,
    quantity INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert cleaned data into dimensions

INSERT INTO dim_date VALUES
('2023-01-01',2023,1,'January'),
('2023-02-01',2023,2,'February'),
('2023-03-01',2023,3,'March');

INSERT INTO dim_store VALUES
(1,'Store A','Mumbai'),
(2,'Store B','Delhi'),
(3,'Store C','Bangalore');

INSERT INTO dim_product VALUES
(1,'Laptop','Electronics'),
(2,'Mobile','Electronics'),
(3,'Shoes','Fashion');

-- Insert sample fact data

INSERT INTO fact_sales VALUES
(1,'2023-01-01',1,1,2,100000),
(2,'2023-01-01',2,2,1,20000),
(3,'2023-02-01',1,3,3,9000),
(4,'2023-02-01',3,1,1,50000),
(5,'2023-02-01',2,2,2,40000),
(6,'2023-03-01',3,3,2,6000),
(7,'2023-03-01',1,2,1,20000),
(8,'2023-03-01',2,1,1,50000),
(9,'2023-03-01',3,2,2,40000),
(10,'2023-03-01',1,3,1,3000);

