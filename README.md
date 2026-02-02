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
