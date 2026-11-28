USE EcommerceDW;
GO

SELECT
    order_id,
    customer_id,
    order_status,

    TRY_CONVERT(DATETIME, order_purchase_timestamp)      AS order_purchase_timestamp,

    TRY_CONVERT(DATETIME, order_approved_at)             AS order_approved_at,

    TRY_CONVERT(DATETIME, order_delivered_carrier_date)  AS order_delivered_carrier_date,

    TRY_CONVERT(DATETIME, order_delivered_customer_date) AS order_delivered_customer_date,

    TRY_CONVERT(DATETIME, order_estimated_delivery_date) AS order_estimated_delivery_date

INTO transform.Orders

FROM staging.olist_orders_dataset;


SELECT
    order_id,
    DATEDIFF(
        DAY,
        order_purchase_timestamp,
        order_delivered_customer_date
    ) AS DeliveryDays
FROM transform.Orders;


SELECT *
FROM transform.Orders
WHERE order_delivered_customer_date >
      order_estimated_delivery_date;


