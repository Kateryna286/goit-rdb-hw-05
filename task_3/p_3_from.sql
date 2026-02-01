SELECT 
    order_id,
    AVG(quantity) AS avg_quantity
FROM (SELECT order_id, quantity FROM order_details od WHERE quantity > 10) AS temp_table
GROUP BY order_id