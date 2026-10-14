-- Menu Performance

-- 1. What are the top 10 best-selling menu items?
SELECT 
    m.item_name,
    m.category,
    COUNT(o.order_details_id) AS quantity_sold,
    SUM(m.price) AS total_revenue
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
GROUP BY 
    m.item_name,
    m.category
ORDER BY quantity_sold DESC
LIMIT 10;



-- 2. Which menu items generated the most revenue?
SELECT 
    m.item_name,
    m.category,
    COUNT(o.order_details_id) AS quantity_sold,
    SUM(m.price) AS total_revenue
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
GROUP BY 
    m.item_name,
    m.category
ORDER BY total_revenue DESC
LIMIT 1;



-- 3. Which menu items generated the least revenue?
SELECT 
    m.item_name,
    m.category,
    COUNT(o.order_details_id) AS quantity_sold,
    SUM(m.price) AS total_revenue
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
GROUP BY 
    m.item_name,
    m.category
ORDER BY total_revenue ASC
LIMIT 1;



-- 4. Which menu items were ordered the fewest times?
SELECT 
    m.item_name,
    m.category,
    COUNT(o.order_details_id) AS times_ordered
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
GROUP BY 
    m.item_name,
    m.category
ORDER BY times_ordered ASC
LIMIT 5;



-- 5. What is the average selling price by category?
SELECT category, AVG(price) AS average_price
FROM menu_items
GROUP BY category
ORDER BY average_price DESC;



-- 6. Which category has the most menu items?
SELECT category, COUNT(menu_item_id) AS number_of_items
FROM menu_items
GROUP BY category
ORDER BY number_of_items DESC;



-- 7. Which category generates the most revenue?
SELECT
    m.category,
    SUM(m.price) AS total_revenue
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
GROUP BY m.category
ORDER BY total_revenue DESC;



-- 8. Which category has the highest number of orders?
SELECT
    m.category,
    COUNT(o.order_id) AS total_orders
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
GROUP BY m.category
ORDER BY total_orders DESC;



-- 9. What percentage of total revenue comes from each category?
SELECT
    m.category,
    ROUND(SUM(m.price), 2) AS category_revenue,
    ROUND(SUM(m.price) * 100.0 / SUM(SUM(m.price)) OVER(), 2) AS revenue_percentage
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
GROUP BY m.category
ORDER BY revenue_percentage DESC;