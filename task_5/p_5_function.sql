DROP FUNCTION IF EXISTS DivideFloat;

DELIMITER //

CREATE FUNCTION DivideFloat(quantity_value FLOAT, divisor FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result FLOAT;
    SET result = quantity_value / divisor;
    RETURN result;
END //

DELIMITER ;

SELECT 
	DivideFloat(od.quantity, 2) as divide_quantity_2
FROM order_details od
	