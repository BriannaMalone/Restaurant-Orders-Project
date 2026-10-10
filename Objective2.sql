-- 1. View the order_details table.
SELECT * FROM order_details;

-- 2. What is the date range of the table?
SELECT 
	MIN(order_date) AS earliest_date, 
    MAX(order_date) AS latest_date
FROM order_details;

-- 3. How many orders were made within the data range?
SELECT COUNT(DISTINCT order_id) as total_orders
FROM order_details;

-- 4. How many items were ordered witin this date range?
SELECT COUNT(*) as total_items_ordered
FROM order_details;

-- 5. Which orders had the most number of items?
SELECT 
	order_id, 
    COUNT(item_id) as number_items
FROM order_details
GROUP BY order_id
ORDER BY number_items DESC;

-- 6. How many orders had more than 12 items?
SELECT COUNT(*) 
FROM

(SELECT order_id, COUNT(item_id) as number_items
FROM order_details
GROUP BY order_id
HAVING number_items > 12) AS number_orders ;