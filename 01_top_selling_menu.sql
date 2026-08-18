-- ============================================================
-- Query 1: Top Selling Menu Items
-- Business Question: Which menu items sell the most units?
-- ============================================================

SELECT
  m.name,
  SUM(od.quantity) AS total_units_sold
FROM `porto-sedukopi.Sedukopi.order_details` od
JOIN `porto-sedukopi.Sedukopi.Menu_items` m
  ON od.item_id = m.item_id
GROUP BY m.name
ORDER BY total_units_sold DESC
LIMIT 10;

-- ============================================================
-- Insight:
-- The top-selling items are dominated by fusion/dessert products
-- (e.g. Matcha Espresso Fusion, Cheese Cake Slice, Croissant Butter,
-- Strawberry Smoothie) rather than classic coffee drinks.
-- This suggests dessert and fusion items, not coffee itself, are
-- the main traffic driver for the brand.
-- ============================================================
