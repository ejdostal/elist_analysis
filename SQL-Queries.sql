
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

-- For North America Macbooks, there was an average of 98 units sold per quarter and 155,362 in dollar sales per quarter.