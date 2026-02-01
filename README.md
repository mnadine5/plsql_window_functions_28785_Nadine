# sql-window-functions-assignment

## Step 1: Problem Definition

   ### Business Context

The organization is a pharmacy operating in the healthcare retail industry.
The analysis is carried out by the pharmacy’s sales and records team.

   ### Data Challenge

The pharmacy sells different medicines to customers from different locations and at different times. However, it is difficult to keep clear records of medicine sales, customer purchases, and how sales change over time. Without proper analysis, it becomes hard to know which medicines sell the most, how demand changes, and how customers behave.

   ### Expected Outcome

The analysis is expected to help track medicine sales over time, identify top-selling medicines, and understand customer purchasing patterns to support better stock management and business decisions.


## Step 2: Success Criteria
   ### Five measurable goals, clearly linked to window functions:

1.Top 5 medicines per location based on total sales quantity → RANK()
2.Running total sales revenue per month → SUM() OVER()
3.Month-over-month sales growth percentage → LAG() / LEAD()
4.Customer segmentation into quartiles by total purchase amount → NTILE(4)
5.Three-month moving average of medicine sales quantity → AVG() OVER()

## Step 3: Database Schema Design
