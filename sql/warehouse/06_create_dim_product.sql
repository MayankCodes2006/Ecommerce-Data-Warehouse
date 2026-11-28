USE EcommerceDW;
GO


CREATE TABLE warehouse.DimProduct
(
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,

    product_id NVARCHAR(50),

    product_category_name NVARCHAR(100),

    product_weight_g INT,

    product_length_cm INT,

    product_height_cm INT,

    product_width_cm INT
);

INSERT INTO warehouse.DimProduct
(
 product_id,
 product_category_name,
 product_weight_g,
 product_length_cm,
 product_height_cm,
 product_width_cm
)

SELECT

product_id,
product_category_name,
product_weight_g,
product_length_cm,
product_height_cm,
product_width_cm

FROM staging.olist_products_dataset;