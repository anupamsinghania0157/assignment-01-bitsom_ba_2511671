## Anomaly Analysis

### Insert Anomaly
In the orders_flat.csv dataset, product information is tightly coupled with order data. This makes it impossible to insert a new product independently without creating an associated order. For example, if a new product such as a "Smart TV" needs to be added but no order exists, it cannot be stored.

### Update Anomaly
Customer attributes such as city and name are repeated across multiple rows. If a customer changes their city, it must be updated in multiple rows. Missing even one update can lead to inconsistent data.

### Delete Anomaly
If a row representing an order is deleted, all related information about the customer, product, and sales representative may also be lost. For example, deleting the only order of a customer removes all their data.

## Normalization Justification

The denormalized dataset introduces redundancy and increases the risk of inconsistency. Customer and product details are repeated across multiple rows, leading to unnecessary duplication.

By normalizing into Third Normal Form (3NF), we separate data into logical tables such as Customers, Products, Orders, and Order_Items. This ensures each piece of information is stored only once, reducing redundancy and improving data integrity.

Normalization also improves scalability, maintainability, and query efficiency. Therefore, normalization is essential for building a robust database system.

