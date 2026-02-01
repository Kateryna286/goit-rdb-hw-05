WITH TemporalTable AS (
	SELECT order_id, quantity 
    FROM order_details od 
    WHERE quantity > 10
)
SELECT 
    order_id,
    AVG(quantity) AS avg_quantity
FROM TemporalTable
GROUP BY order_id;