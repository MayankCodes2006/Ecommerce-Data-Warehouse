SELECT 'Customers' AS TableName,
       COUNT(*) AS TotalRows
FROM staging.olist_customers_dataset

UNION ALL

SELECT 'Orders',
       COUNT(*)
FROM staging.olist_orders_dataset

UNION ALL

SELECT 'Products',
       COUNT(*)
FROM staging.olist_products_dataset

UNION ALL

SELECT 'OrderItems',
       COUNT(*)
FROM staging.olist_order_items_dataset

UNION ALL

SELECT 'Payments',
       COUNT(*)
FROM staging.olist_order_payments_dataset

UNION ALL

SELECT 'Reviews',
       COUNT(*)
FROM staging.olist_order_reviews_dataset

UNION ALL

SELECT 'Sellers',
       COUNT(*)
FROM staging.olist_sellers_dataset;


SELECT *
FROM staging.olist_products_dataset
WHERE product_weight_g IS NULL;

SELECT *
FROM staging.olist_products_dataset
WHERE product_length_cm IS NULL;

SELECT *
FROM staging.olist_products_dataset
WHERE product_height_cm IS NULL;


SELECT customer_id,
       COUNT(*) AS Total
FROM staging.olist_customers_dataset
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT order_id,
       COUNT(*)
FROM staging.olist_orders_dataset
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT seller_id,
       COUNT(*)
FROM staging.olist_sellers_dataset
GROUP BY seller_id
HAVING COUNT(*) > 1;