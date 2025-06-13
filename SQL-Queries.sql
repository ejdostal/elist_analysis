
-- What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 
  -- grouped by quarter, most recent to oldest
  -- assuming avg order value is the avg of usd_price column
  -- metrics rounded for readability (2)

SELECT DISTINCT orders.product_name
FROM core.orders;
-- to check Macbook products

SELECT DISTINCT geo_lookup.region
FROM core.geo_lookup;
-- to check North America abbreviation 

SELECT DATE_TRUNC(orders.purchase_ts, quarter) as purchase_quarter,
  COUNT(DISTINCT orders.id) as order_count,
  ROUND(SUM(orders.usd_price),2) as total_sales,
  ROUND(AVG(orders.usd_price),2) as aov
FROM core.orders
LEFT JOIN core.customers
ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
ON customers.country_code = geo_lookup.country
WHERE lower(orders.product_name) LIKE "%macbook%"
  AND geo_lookup.region = "NA"
GROUP BY 1 
ORDER BY 1 DESC;


-- What is the average quarterly order count and total sales for Macbooks sold in North America?

WITH quarterly_metrics as (
  SELECT DATE_TRUNC(orders.purchase_ts, quarter) as purchase_quarter,
    COUNT(DISTINCT orders.id) as order_count,
    SUM(orders.usd_price) as total_sales,
    AVG(orders.usd_price) as aov
  FROM core.orders
  LEFT JOIN core.customers
  ON orders.customer_id = customers.id
  LEFT JOIN core.geo_lookup
  ON customers.country_code = geo_lookup.country
  WHERE lower(orders.product_name) LIKE "%macbook%"
    AND geo_lookup.region = "NA"
  GROUP BY 1 
  ORDER BY 1 DESC)

SELECT ROUND(AVG(order_count), 2) as avg_quarter_order_count,
  ROUND(AVG(total_sales),2) as avg_quarter_total_sales
FROM quarterly_metrics;
-- For North America Macbooks, an average of 98 units were sold per quarter and 155,362 in dollar sales per quarter.


-- For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver?
  -- assuming delivery_time is the difference between purchase timestamp and delivery timestamp in days
  -- avg for website purchases in 2022 as well as mobile purchases

SELECT DISTINCT orders.purchase_platform
FROM core.orders;
-- to check purchase_platform

SELECT geo_lookup.region, 
  ROUND(AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts, day)),2) as time_to_deliver
FROM core.order_status
LEFT JOIN core.orders
  ON order_status.order_id = orders.id
LEFT JOIN core.customers
  ON customers.id = orders.customer_id
LEFT JOIN core.geo_lookup
  ON geo_lookup.country = customers.country_code
WHERE (EXTRACT(year FROM orders.purchase_ts) = 2022 AND purchase_platform = "website")
  OR purchase_platform = "mobile app"
GROUP BY 1
ORDER BY 2 DESC;
-- EMEA had the highest delivery time, but all regions were similar (~7.5 days)


-- For purchases made in 2022 on the website or Samsung purchases made in 2021, which region had the average highest time to deliver (in weeks)?

SELECT DISTINCT orders.product_name
FROM core.orders;
-- to check product_name

SELECT geo_lookup.region,
  ROUND(AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts, week)), 2) as avg_time_to_deliver
FROM core.order_status
LEFT JOIN core.orders
ON order_status.order_id = orders.id
LEFT JOIN core.customers
ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
ON customers.country_code = geo_lookup.country
WHERE (purchase_platform = "website"
  AND EXTRACT(year FROM order_status.purchase_ts) = 2022)
  OR (lower(orders.product_name) LIKE "%samsung%"
  AND EXTRACT(year FROM order_status.purchase_ts) = 2021)
GROUP BY 1
ORDER BY 2 DESC;
-- Of available region information, LATAM had highest time to deliver (~1.8 weeks) but all identifiable regions were similar (~1.06 - 1.08; ~1.09 for nulls)


-- What was the refund rate and refund count for each product overall? 
  -- helper column using case when - then takes sum / avg from it
  -- sorted by products with highest refund rates first

SELECT DISTINCT orders.product_name
FROM core.orders;
-- to check product_name

SELECT (CASE WHEN orders.product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE orders.product_name END) as product_name_clean,
  AVG(CASE WHEN order_status.refund_ts IS NOT NULL THEN 1 ELSE 0 END) as refund_rate,
  SUM(CASE WHEN order_status.refund_ts IS NOT NULL THEN 1 ELSE 0 END) as refund_count
FROM core.order_status
LEFT JOIN core.orders 
ON order_status.order_id = orders.id
GROUP BY 1
ORDER BY 2 DESC;
-- Thinkpad Laptop is the top refunded product at ~11.7% refund rate
-- Macbook Air Laptop and Apple iPhone also have high refund rates (~11.4%, 7.6%)
-- Apple Airpods Headphones have highest number of refunds (2.6K)


-- What was the refund rate and refund count for each product per year?
  -- group by purchase date - not refund date - otherwise refund rates would be 100% because every row would be a refund

SELECT EXTRACT(year FROM order_status.purchase_ts) as purchase_year,
  (CASE WHEN orders.product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE orders.product_name END) as product_name_clean,
  SUM(CASE WHEN order_status.refund_ts IS NOT NULL THEN 1 ELSE 0 END) as refund_count,
  AVG(CASE WHEN order_status.refund_ts IS NOT NULL THEN 1 ELSE 0 END) as refund_rate
FROM core.order_status
LEFT JOIN core.orders
ON order_status.order_id = orders.id
GROUP BY 1,2
ORDER BY 1 DESC;
-- (ORDER BY 1 DESC) No refunds were recorded for any product in 2022 - could be a data quality issue. Recommend that data engineers investigate the anomaly further.
-- (ORDER BY 4 DESC) For MacBook Air Laptop purchases made during 2019, 18.3% of them were eventually refunded. (product and year with highest refund rate across dataset)
-- (HAVING purchase_year = 2021) Thinkpad Laptop purchases had the highest refund rate in 2021 (~9.1% refunded)


-- Within each region, what is the most popular product? 
  -- assuming "popular" is defined as highest order count

