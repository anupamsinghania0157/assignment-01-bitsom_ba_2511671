## Anomaly Analysis

### Insert Anomaly
In the orders_flat.csv dataset, product information is tightly coupled with order data. This makes it impossible to insert a new product independently without creating an associated order.

### Update Anomaly
Customer details are repeated across multiple rows. Updating a customer’s city requires multiple updates, which can lead to inconsistency.

### Delete Anomaly
Deleting an order row can remove all information about a customer if that was their only order.
