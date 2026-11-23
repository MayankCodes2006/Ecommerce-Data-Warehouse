USE EcommerceDW;
GO

CREATE TABLE staging.stg_Customers
(
    customer_id NVARCHAR(50),
    customer_unique_id NVARCHAR(50),
    customer_zip_code_prefix INT,
    customer_city NVARCHAR(100),
    customer_state CHAR(2)
);