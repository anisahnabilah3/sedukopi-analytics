-- ============================================================
-- Query 3: Outlet Sales Performance
-- Business Question: Which outlets generate the most / least revenue?
-- ============================================================

SELECT
  o.name,
  SUM(ord.total_amount) AS total_revenue
FROM `porto-sedukopi.Sedukopi.orders` ord
JOIN `porto-sedukopi.Sedukopi.outlets` o
  ON ord.outlet_id = o.outlet_id
GROUP BY o.name
ORDER BY total_revenue DESC;

-- ============================================================
-- Validation query: confirm inactive outlets have zero transactions
-- (uses LEFT JOIN to keep outlets even with no matching orders)
-- ============================================================

SELECT
  o.name,
  o.status,
  SUM(ord.total_amount) AS total_revenue
FROM `porto-sedukopi.Sedukopi.outlets` o
LEFT JOIN `porto-sedukopi.Sedukopi.orders` ord
  ON o.outlet_id = ord.outlet_id
GROUP BY o.name, o.status
ORDER BY total_revenue DESC;

-- ============================================================
-- Insight:
-- Out of 20 outlets, 18 are active and generated revenue; the
-- remaining 2 are marked "temporarily_closed" and correctly show
-- zero (NULL) revenue, confirming data consistency.
--
-- Among active outlets, revenue ranges from Rp 25,534,000
-- (Senopati, highest) down to Rp 15,997,000 (Margonda, lowest) -
-- roughly a 60% gap between the top and bottom performer.
--
-- Recommendation: investigate what drives the gap between top and
-- bottom outlets (location, footfall, local marketing, staffing)
-- to identify best practices worth replicating.
-- ============================================================
