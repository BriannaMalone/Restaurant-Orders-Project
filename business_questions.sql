-- Business Questions

SELECT *
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id;
    
-- 1. How many total orders were placed?
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM order_details;

-- 2. How many total items were ordered?
SELECT COUNT(order_details_id) AS total_items_ordered
FROM order_details;

-- 3. How many unique orders were placed?
SELECT COUNT(DISTINCT order_id) as unique_orders
FROM order_details;

-- 4. How many unique menu items were ordered?
SELECT COUNT(DISTINCT item_id) AS unique_menu_items
FROM order_details;

-- 5. What is the total revenue?
SELECT SUM(price) as total_revenue
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id;

-- 6. What is the average order value?
SELECT
    ROUND(SUM(mi.price) / COUNT(DISTINCT od.order_id), 2) AS average_order_value
FROM order_details od
JOIN menu_items mi
    ON od.item_id = mi.menu_item_id;

-- 7. What is the average number of items per order?
SELECT ROUND(COUNT(*) / COUNT(DISTINCT order_id), 2) AS average_items_per_order
FROM order_details;

-- 8. What is the average price of an item?
SELECT 
    ROUND(AVG(price), 2) AS average_item_price
FROM menu_items;

-- 9. What is the most  and least expensive menu item?
(SELECT item_name, category, price
 FROM menu_items
 ORDER BY price DESC
 LIMIT 1)
UNION
(SELECT item_name, category, price
 FROM menu_items
 ORDER BY price ASC
 LIMIT 1);