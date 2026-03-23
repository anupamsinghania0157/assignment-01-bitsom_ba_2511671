## Storage Systems

For this system, multiple storage solutions are used based on the requirements. An OLTP database such as MySQL is used to store transactional data like patient records, billing, and hospital operations. A Data Lake is used to store raw and unstructured data such as ICU device streams and logs. A Data Warehouse is used for reporting and analytics, enabling management to generate monthly reports on occupancy and costs. Additionally, a Vector Database is used to enable semantic search for querying patient history in natural language. For predictive analysis, an AI model is built using historical data from the warehouse.

## OLTP vs OLAP Boundary

The OLTP system handles real-time transactional data such as patient admissions, treatments, and billing. This ensures fast and consistent operations. The OLAP system begins once data is moved from the OLTP system to the Data Warehouse through ETL processes. The warehouse is used for analytical queries, reporting, and training AI models. Thus, OLTP focuses on daily operations, while OLAP supports decision-making and analysis.

## Trade-offs

One major trade-off in this architecture is complexity. Using multiple systems such as Data Lake, Data Warehouse, and Vector DB increases system complexity and maintenance effort. However, this is mitigated by clearly separating responsibilities of each system and using automated data pipelines. This ensures scalability and performance while managing complexity effectively.

