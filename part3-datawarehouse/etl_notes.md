## ETL Decisions

### Decision 1 — Date Standardization
Problem: The raw dataset contained inconsistent date formats such as DD-MM-YYYY and YYYY/MM/DD.
Resolution: All dates were converted into a standard YYYY-MM-DD format to ensure consistency and proper joins.

### Decision 2 — Handling Missing Values
Problem: Some rows had NULL values in important fields such as product category and store.
Resolution: Missing values were either filled using logical defaults or removed if they were not usable for analysis.

### Decision 3 — Category Normalization
Problem: Product categories were inconsistent (e.g., "electronics", "Electronics", "ELECTRONICS").
Resolution: All category values were standardized into a consistent format (capitalized form) to ensure accurate grouping and aggregation.
