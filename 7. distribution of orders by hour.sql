-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(orders.order_time) as hour_ordered, pizza_types.name, pizza_types.category, pizzas.size, pizzas.price, pizza_types.ingredients, orders_details.quantity
FROM
    orders
        JOIN
    orders_details ON orders.order_id = orders_details.order_id
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id;