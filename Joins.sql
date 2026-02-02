1. INNER Join : Retrieve trasactions with valid customers and products.
   -- Only returns transactions where both customer and products exists.
   SELECT
    s.sale_id,
    c.name AS customer_name,
    m.name AS medicine_name,
    s.sale_date,
    s.quantity,
    s.total_amount
FROM Sales s
INNER JOIN Customers c
    ON s.customer_id = c.customer_id
INNER JOIN Medicines m
    ON s.medicine_id = m.medicine_id;

2. LEFT JOIN — Identify customers who have never made a transaction.
   -- Returns Customers with no sales
SELECT
    c.customer_id,
    c.name,
    c.location
FROM Customers c
LEFT JOIN Sales s
    ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;

3.RIGHT JOIN (or FULL JOIN) — Detect products with no sales activity.
   --Medicines that were never sold
SELECT
    m.medicine_id,
    m.name,
    m.category
FROM Sales s
RIGHT JOIN Medicines m
    ON s.medicine_id = m.medicine_id
WHERE s.sale_id IS NULL;

4.FULL OUTER JOIN — Compare customers and products including unmatched records.
  --Combines all customers, all transactions and all products even is some are unmatched.
SELECT
    c.name AS customer_name,
    m.name AS medicine_name
FROM Customers c
FULL OUTER JOIN Medicines m
    ON c.customer_id = m.medicine_id;

5.SELF JOIN — Compare customers within the same region.
   -- Customers from the same location
SELECT
    c1.name AS customer_1,
    c2.name AS customer_2,
    c1.location
FROM Customers c1
INNER JOIN Customers c2
    ON c1.location = c2.location
   AND c1.customer_id < c2.customer_id;

