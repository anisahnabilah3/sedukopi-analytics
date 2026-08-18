-- ============================================================
-- Query 2: Peak Transaction Hours
-- Business Question: What time of day is busiest across all outlets?
-- ============================================================

SELECT
  EXTRACT(HOUR FROM order_time) AS hour_of_day,
  COUNT(*) AS transaction_count
FROM `porto-sedukopi.Sedukopi.orders`
GROUP BY hour_of_day
ORDER BY hour_of_day;

-- ============================================================
-- Insight:
-- Transactions show a clear dual-peak pattern rather than a
-- single rush hour:
--   - Morning peak: ~07:00-08:00 (commute / before work-school)
--   - Evening peak: ~17:00-19:00 (after work / hangout hours)
-- Midday hours (09:00-16:00) and late night (20:00-22:00) are
-- roughly 4x quieter than the peak hours.
--
-- Recommendation: align staffing with the two peak windows, and
-- consider off-peak promotions (e.g. 10:00-15:00) to smooth demand.
-- ============================================================
