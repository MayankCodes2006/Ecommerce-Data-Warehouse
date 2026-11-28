USE EcommerceDW;
GO

SELECT
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    UPPER(TRIM(customer_city)) AS customer_city,
    UPPER(TRIM(customer_state)) AS customer_state
INTO transform.Customers
FROM staging.olist_customers_dataset;