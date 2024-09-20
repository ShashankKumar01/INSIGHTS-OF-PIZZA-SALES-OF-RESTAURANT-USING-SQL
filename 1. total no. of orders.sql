-- Retrieve the total number of orders placed.

select count(orders.order_id) as total_orders
from orders;