// OP1: insertMany()
db.products.insertMany([
  {
    product_id: "ELEC001",
    name: "iPhone 15",
    category: "Electronics",
    price: 80000
  },
  {
    product_id: "CLOT001",
    name: "Men's Jacket",
    category: "Clothing",
    price: 2500
  },
  {
    product_id: "GROC001",
    name: "Milk Packet",
    category: "Groceries",
    price: 60,
    expiry_date: new Date("2024-12-30")
  }
]);

// OP2: find Electronics > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: groceries expiring before 2025
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne add discount
db.products.updateOne(
  { product_id: "ELEC001" },
  { $set: { discount_percent: 10 } }
);

// OP5: create index
db.products.createIndex({ category: 1 });
