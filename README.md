# Sedukopi Sales Analytics ☕

A SQL-based sales analysis project for **Sedukopi**, a fictional 20-outlet coffee shop chain, built as a hands-on data analyst portfolio project.

## 🎯 Project Background

Sedukopi's management wants to understand what's actually driving (and holding back) sales across their outlets. Using transactional data, this project answers four core business questions to surface actionable insights for menu strategy, staffing, and outlet performance.

## 🗂️ Dataset

The dataset simulates 5 months of operations across Sedukopi's outlet network:

| Table | Description | Rows |
|---|---|---|
| `outlets` | 20 branches with location, manager, and status | 20 |
| `menu_items` | 80 menu items with price and cost price | 80 |
| `staff` | 120 employees across outlets | 120 |
| `orders` | Transaction-level records (date, time, outlet, payment) | 5,000 |
| `order_details` | Line-item detail per order (item, quantity) | 8,123 |

Source: [ngulikdata.com/datasets/sedukopi](https://ngulikdata.com/datasets/sedukopi)

## 🛠️ Tools Used

- **Google BigQuery** — data warehousing and SQL analysis
- **Looker Studio** — dashboard visualization *(link below)*

## ❓ Business Questions & Key Insights

### 1. Which menu items sell the most units?
Best-sellers are dominated by **fusion and dessert items** (Matcha Espresso Fusion, Cheese Cake Slice, Croissant Butter, Strawberry Smoothie) rather than classic coffee drinks — suggesting these items, not coffee itself, are the brand's main traffic driver.

📄 [`01_top_selling_menu.sql`](queries/01_top_selling_menu.sql)

### 2. What time of day is busiest?
Transactions follow a **dual-peak pattern**: a morning peak (~07:00-08:00) and an evening peak (~17:00-19:00), with midday and late-night hours roughly 4x quieter. This challenges the common assumption of a single lunchtime rush.

📄 [`02_peak_hours.sql`](queries/02_peak_hours.sql)

### 3. Which outlets perform best / worst?
Among 18 active outlets, revenue ranges from **Rp 25.5M (Senopati, top)** to **Rp 16.0M (Margonda, bottom)** — a ~60% gap. A validation query also confirms the 2 outlets marked `temporarily_closed` correctly show zero revenue, verifying data integrity.

📄 [`03_outlet_performance.sql`](queries/03_outlet_performance.sql)

### 4. Which menu items are most profitable — not just most sold?
The most profitable items are **completely different** from the best-sellers. Heavy food items (Club Sandwich, Croissant Almond, French Toast, Pancake Maple) drive the most profit, while trendy drinks/desserts drive volume but not necessarily margin.

📄 [`04_most_profitable_menu.sql`](queries/04_most_profitable_menu.sql)

## 📊 Dashboard

*(Add your Looker Studio public link here once published)*

## 💡 Summary Recommendations

- **Bundle high-traffic and high-margin items** — pair popular desserts (which drive footfall) with high-margin food items (which drive profit) to lift average order value.
- **Align staffing with the two daily peaks** (7-8 AM and 5-7 PM) rather than assuming a single midday rush.
- **Investigate the outlet performance gap** — study what top performers like Senopati are doing differently from lower performers like Margonda.
- **Reassess dessert-item pricing/margins**, since they drive volume but not proportional profit.

## 🔍 About This Project

This project was built end-to-end as a learning exercise: designing business questions, writing and debugging SQL (including JOINs, aggregations, and window-style analysis), and translating raw query output into business-relevant insights.

---
*Author: [your name] — feel free to connect on [LinkedIn](#)*
