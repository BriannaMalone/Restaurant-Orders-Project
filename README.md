# Restaurant-Orders-Project

## 📌 Project Overview

This project analyzes restaurant order data using **MySQL** to uncover trends in customer ordering behavior, menu item performance, revenue, and category-level performance.

I completed this analysis as part of the Maven Analytics Restaurant Order Analysis Guided Project, adding additional business questions and SQL analysis to strengthen it as a data analytics portfolio piece.

This project demonstrates how SQL can transform raw transactional data into meaningful business insights on menu performance, revenue, and customer demand.

---

## 📊 Dataset
The dataset comes from **Maven Analytics** and contains restaurant order data from a fictitious international cuisine restaurant.


### Dataset Information

### Key Tables

| Table | Description |
|---|---|
| `menu_items` | Contains menu item names, categories, and prices |
| `order_details` | Contains individual items included in each order |
| `orders` | Contains information about customer orders |
---

## 🔗 Data Source
- [Maven Analytics — Restaurant Orders Dataset](https://mavenanalytics.io/data-playground/restaurant-orders)
- [Maven Analytics — Restaurant Order Analysis Guided Project](https://mavenanalytics.io/guided-projects/restaurant-order-analysis)
---

## 🔄 Project Workflow

### Objective 1
- Examine the menu_items table to understand its structure and contents by identifying the total number of records, the lowest- and highest-priced items, and the price ranges across different categories.

📄 SQL file: `Objective1.sql`

### Objective 2
- Analyze the order_details table to determine the date range of the data, the number of items included in each order, and the orders containing the greatest number of items.
📄 SQL file: `Objective2.sql`

### Objective 3
- Join the menu_items and order_details tables to evaluate purchasing patterns, identify the most and least popular categories, and investigate the details of orders with the highest spending.
📄 SQL file: `Objective3.sql`

### More Analysis Questions
📄 SQL file: `business_questions.sql`
📄 SQL file: `menu_questions.sql`
📄 SQL file: `top_selling_questions.sql`

---
