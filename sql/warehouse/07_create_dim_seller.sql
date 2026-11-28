CREATE TABLE warehouse.DimSeller
(
    SellerKey INT IDENTITY(1,1) PRIMARY KEY,

    seller_id NVARCHAR(50),

    seller_zip_code_prefix INT,

    seller_city NVARCHAR(100),

    seller_state CHAR(2)
);

INSERT INTO warehouse.DimSeller
(
seller_id,
seller_zip_code_prefix,
seller_city,
seller_state
)

SELECT

seller_id,
seller_zip_code_prefix,
seller_city,
seller_state

FROM staging.olist_sellers_dataset;

