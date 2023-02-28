-- Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019.
-- Output the revenue along with the customer id and sort the results based on the revenue in descending order.
select cust_id, sum(total_order_cost) as revenue from orders
where order_date like '%2019-03%'
group by 1
order by revenue desc;