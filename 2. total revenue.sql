-- Calculate the total revenue generated from pizza sales.

SELECT round(sum(orders_details.quantity * pizzas.price), 2) as total_revenue
from orders_details
join pizzas on pizzas.pizza_id = orders_details.pizza_id;
