# Data Dictionary

## Dataset Information

| File Name | Description |
|-----------|-------------|
| olist_customers_dataset.csv | Contains customer information |
| olist_orders_dataset.csv | Contains order details |
| olist_order_items_dataset.csv | Products included in each order |
| olist_products_dataset.csv | Product information |
| olist_sellers_dataset.csv | Seller information |
| olist_order_payments_dataset.csv | Payment details |
| olist_order_reviews_dataset.csv | Customer reviews |
| olist_geolocation_dataset.csv | Customer and seller geolocation |
| product_category_name_translation.csv | Portuguese to English category mapping |




| Dataset | Primary Key | Foreign Keys | Important Columns |
|----------|-------------|--------------|-------------------|
| Customers | customer_id | — | customer_city, customer_state |
| Orders | order_id | customer_id | order_status, order_purchase_timestamp |
| Order Items | order_item_id* | order_id, product_id, seller_id | price, freight_value |
| Products | product_id | product_category_name | product_weight_g |
| Sellers | seller_id | — | seller_city, seller_state |
| Payments | *(order_id + payment_sequential)* | order_id | payment_type, payment_value |
| Reviews | review_id | order_id | review_score |
| Geolocation | — | — | zip_code_prefix, city, state |