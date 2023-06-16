WITH CTE as (SELECT s.Customer_name, s.State, s.Category, COUNT(c.Category) OVER (PARTITION by c.Category) as TotalCategory

FROM Sales S
Join Consumer C
on S.order_id = c.order_id

WHERE s.sales > '100')
SELECT * FROM CTE