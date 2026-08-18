-- ============================================================
-- Query 4: Most Profitable Menu Items
-- Business Question: Which menu items generate the most profit
-- (not just the most units sold)?
-- ============================================================

SELECT
  m.name,
  SUM((m.price - m.cost_price) * od.quantity) AS total_profit
FROM `porto-sedukopi.Sedukopi.order_details` od
JOIN `porto-sedukopi.Sedukopi.Menu_items` m
  ON od.item_id = m.item_id
GROUP BY m.name
ORDER BY total_profit DESC
LIMIT 10;

-- ============================================================
-- Insight:
-- The most profitable items are entirely different from the
-- best-selling items in Query 1. Heavy food items (Club Sandwich,
-- Croissant Almond, French Toast, Pancake Maple) dominate profit,
-- while trendy dessert/fusion drinks drive volume but not
-- necessarily the highest margin.
--
-- Recommendation: consider cross-promoting high-margin food items
-- alongside high-traffic dessert items (bundling), and review
-- pricing/margins on the best-selling dessert items.
-- ============================================================
