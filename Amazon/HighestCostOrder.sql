-- Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. If customer had more than one order on a certain day, sum the order costs on daily basis. 
-- Output customer's first name, total cost of their items, and the date.
select first_name,sum(total_order_cost) as total_cost, order_date from customers
join orders on customers.id = orders.id
where orders_date between '2019-02-01' and '2019-05-01'
group by orders.order_date, customers.first_name
order by total_cost desc
limit 1;