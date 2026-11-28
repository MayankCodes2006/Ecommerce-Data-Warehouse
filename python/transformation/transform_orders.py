import pandas as pd


orders = pd.read_csv(
    "data/raw/olist_orders_dataset.csv"
)


date_columns = [

"order_purchase_timestamp",
"order_delivered_customer_date",
"order_estimated_delivery_date"

]


for col in date_columns:

    orders[col] = pd.to_datetime(
        orders[col],
        errors="coerce"
    )


orders["delivery_days"] = (

orders["order_delivered_customer_date"]

-

orders["order_purchase_timestamp"]

).dt.days


print(
    orders.head()
)