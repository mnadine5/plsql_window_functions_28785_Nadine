1. Ranking Functions
  a) ROW_NUMBER()
     ## Unique ranking of medicines by total revenue
SELECT
    m.name AS medicine_name,
    SUM(s.total_amount) AS total_revenue,
    ROW_NUMBER() OVER (ORDER BY SUM(s.total_amount) DESC) AS row_num
FROM Sales s
JOIN Medicines m ON s.medicine_id = m.medicine_id
GROUP BY m.name;

b) RANK()
   ## Rank medicines by revenue (with gaps)
SELECT
    m.name AS medicine_name,
    SUM(s.total_amount) AS total_revenue,
    RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS rank_no
FROM Sales s
JOIN Medicines m ON s.medicine_id = m.medicine_id
GROUP BY m.name;

c) DENSE_RANK()
    ## Rank medicines by revenue (no gaps)
SELECT
    m.name AS medicine_name,
    SUM(s.total_amount) AS total_revenue,
    DENSE_RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS dense_rank_no
FROM Sales s
JOIN Medicines m ON s.medicine_id = m.medicine_id
GROUP BY m.name;

d) PERCENT_RANK()
   ##Relative ranking of medicines by revenue
SELECT
    m.name AS medicine_name,
    SUM(s.total_amount) AS total_revenue,
    PERCENT_RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS percent_rank
FROM Sales s
JOIN Medicines m ON s.medicine_id = m.medicine_id
GROUP BY m.name;

2. Aggregate Window Functions
   a) SUM() with ROWS
      ## Running total of sales over time (ROWS)
SELECT
    sale_date,
    total_amount,
    SUM(total_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total
FROM Sales;

b) AVG() with RANGE
   ## Average sales using RANGE
SELECT
    sale_date,
    total_amount,
    AVG(total_amount) OVER (
        ORDER BY sale_date
        RANGE BETWEEN INTERVAL '30' DAY PRECEDING AND CURRENT ROW
    ) AS avg_last_30_days
FROM Sales;

c) MIN() and MAX()
    ## Minimum and maximum sale amounts
SELECT
    sale_date,
    total_amount,
    MIN(total_amount) OVER () AS min_sale,
    MAX(total_amount) OVER () AS max_sale
FROM Sales;

3. Navigation Functions
  a) LAG()
    ## Compare current sale with previous sale
SELECT
    sale_date,
    total_amount,
    LAG(total_amount) OVER (ORDER BY sale_date) AS previous_amount,
    total_amount - LAG(total_amount) OVER (ORDER BY sale_date) AS change_amount
FROM Sales;

b) LEAD()
   ## Compare current sale with next sale
SELECT
    sale_date,
    total_amount,
    LEAD(total_amount) OVER (ORDER BY sale_date) AS next_amount
FROM Sales;

4. Distribution Functions
a) NTILE(4) — Quartiles
  ## Segment customers into 4 groups based on total spending
SELECT
    c.name AS customer_name,
    SUM(s.total_amount) AS total_spent,
    NTILE(4) OVER (ORDER BY SUM(s.total_amount) DESC) AS spending_group
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
GROUP BY c.name;

b) CUME_DIST()
  ## Cumulative distribution of customers by spending
SELECT
    c.name AS customer_name,
    SUM(s.total_amount) AS total_spent,
    CUME_DIST() OVER (ORDER BY SUM(s.total_amount)) AS cumulative_distribution
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
GROUP BY c.name;











