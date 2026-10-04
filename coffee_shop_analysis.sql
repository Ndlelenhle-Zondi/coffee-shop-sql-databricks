SELECT SUM(line_total) AS total_revenue
FROM coffee_sales_raw_data;

SELECT
COUNT(DISTINCT transaction_id) AS total_transactions
FROM coffee_sales_raw_data;

SELECT
SUM(quantity) AS total_items_sold
FROM coffee_sales_raw_data;


SELECT store_location,
SUM(line_total) AS total_revenue
FROM coffee_sales_raw_data
GROUP BY store_location
ORDER BY total_revenue DESC;

SELECT
product_name,
SUM(quantity) AS units_sold
FROM coffee_sales_raw_data
GROUP BY product_name
ORDER BY units_sold DESC
LIMIT 10;

SELECT
product_category,
SUM(line_total) AS total_revenue
FROM coffee_sales_raw_data
GROUP BY product_category
ORDER BY total_revenue DESC;

SELECT
SUM(line_total)/COUNT(DISTINCT transaction_id) AS average_transaction_value
FROM coffee_sales_raw_data;

SELECT
    payment_method,
    COUNT(*) AS transaction_count
FROM coffee_sales_raw_data
GROUP BY payment_method
ORDER BY transaction_count DESC;

SELECT
    date,
    SUM(line_total) AS daily_revenue
FROM coffee_sales_raw_data
GROUP BY date
ORDER BY date;

SELECT
    store_location,
    product_name,
    SUM(line_total) AS total_revenue
FROM coffee_sales_raw_data
GROUP BY
    store_location,
    product_name
ORDER BY total_revenue DESC
LIMIT 5;
