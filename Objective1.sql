USE restaurant_db;

-- 1. View the menu_items table.
SELECT * FROM menu_items;

-- 2. Find the number of items on the menu.
SELECT COUNT(*) AS total_items
FROM menu_items;

-- 3. What are the least and most expensive items on the menu.
SELECT
	MIN(price) as least_expensive,
    MAX(price) as most_expensive
FROM menu_items;

-- 4. How many Italian dishes are on the menu?
SELECT COUNT(*) as total_italian
FROM menu_items
WHERE category = 'Italian';

-- 5. What are the least and most expensive dishes on the menu (per category)?
SELECT
	category,
	MIN(price) as least_expensive,
    MAX(price) as most_expensive
FROM menu_items
GROUP BY category;

-- 6. How many dishes are in each category?
SELECT
	category,
	COUNT(menu_item_id) as number_dishes
FROM menu_items
GROUP BY category;

-- 7. What is the average dish price within each category?
SELECT 
	category,
	ROUND(AVG(price), 2) as avg_price
FROM menu_items
GROUP BY category;
