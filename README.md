## Names: MURORA Nadine
## ID:28785
## Group: A

# sql-window-functions-assignment

## Step 1: Problem Definition

   ### Business Context
The Organization is a  pharmacy and operates in the healthcare retail business. The analysis will be conducted by the pharmacy's sales and data department.

   ### Data Challenge
The pharmacy sells various medicines to customers from different locations and at different times. However , It is difficult to keep the clear records of medecine sales, customer purchases and how sales change over time . Without proper analysis, it becomes hard to know which medecines sell the most , how demand changes and how customers behave.

  ### Expected Outcome
The analysis will help track the sales of the medicines over time and the customers'purchasing habits.

## Step 2: Success Criteria

There are five key expectations from the analysis, all related to the use cases with window functions:

 1. Top 5 medicines per location based on total sales quantity: RANK()
 2. Running total sales revenue per month: SUM() OVER()
 3. Month-over-month sales growth percentage: LAG() / LEAD()
 4. Customer segmentation into quartiles by total purchase amount: NTILE(4)
 5. Three-month moving average of medicine sales quantity: AVG() OVER()

 ## Step 3: Database Schema Design   
   ### Schema
   ### Table Customer  ![Table_Customer](screenshots/Table%20Customer.png) 
   ### Table_Medecines ![Table_Medecines](screenshots/Table%20Medecines.png)
   ### Table Sales  ![Table_Sales](screenshots/Table%20sales.png)
   ### ER Diagram
 ![ER_DIAGRAM](screenshots/ER_Diagram.png)

 ## Step 4: Part A — SQL JOINs Implementation
   
   ### Joins Queries
   
   [Joins_Queries](Joins.sql/)
   
   The project includes INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN queries
   to analyze customer purchases and product sales.
  
 1. INNER JOIN: Retrieves valid transactions (joins.sql) ![Inner_Joins_Query_Results](screenshots/INNER%20JOIN.png)
 2. LEFT JOIN: Identifies customers with no purchases    ![Left_Joins_Query_Results](screenshots/LEFT%20JOIN.png)
 3. RIGHT JOIN: Detects medicines with no sales ![Right_Joins_Query_Results](screenshots/INNER%20JOIN.png)
 4. FULL OUTER JOIN: Compares customers and medicines including unmatched records ![Full_Joins_Results](screenshots/FULL%20JOIN.png)

## Step 5: Part B — Window Functions Implementation

  ### Window Function Queries
   [Window_Function_Queries](Window_Functions.sql/)
  
   Window functions are used to analyze sales trends and customer behavior.

 1. RANK(): Identify top-selling medicines ![Rank_Query_Results](screenshots/RANK.png)
 2.SUM() OVER(): Calculate running sales totals ![Rank_Query_Results](screenshots/SUM%20with%20ROWS.png)
 3. LAG(): Compare monthly sales growth ![Rank_Query_Results](screenshots/LAG.png)
 4. NTILE(4): Segment customers into quartiles ![Rank_Query_Results](screenshots/NTILE.png)


## Key Insights

  - Painkiller medicines such as Paracetamol generated the highest sales revenue, indicating strong customer demand for      this category.
  - Customers from Kigali made more frequent purchases compared to other locations, suggesting higher sales activity in      that region.
  - Some medicines, such as Insulin, showed little or no sales activity, which may require better stock planning or           promotion.
  - Sales amounts increased over time, showing a positive trend in overall pharmacy performance.
  - Customer spending segmentation revealed a small group of high-value customers responsible for a large portion of          total revenue.

## References
   INSY 8222 Lecture Notes
   INSY 8311 Lecture Notes 
   
## Integrity Statement
All sources were properly cited. Implementations and analysis represent original work.


