USE EcommerceDW;
GO

CREATE TABLE warehouse.DimCustomer
(
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,

    customer_id NVARCHAR(50),

    customer_unique_id NVARCHAR(50),

    customer_zip_code_prefix INT,

    customer_city NVARCHAR(100),

    customer_state CHAR(2)
);


INSERT INTO warehouse.DimCustomer
(
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state
)
SELECT
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state
FROM transform.Customers;

