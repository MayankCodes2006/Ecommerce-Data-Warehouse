import pandas as pd


def create_dim_customer(df):

    dim_customer = df[
        [
        "customer_id",
        "customer_unique_id",
        "customer_zip_code_prefix",
        "customer_city",
        "customer_state"
        ]
    ]

    return dim_customer



customers = pd.read_csv(
    "data/raw/olist_customers_dataset.csv"
)


dim_customer = create_dim_customer(customers)


print(dim_customer.head())
print(dim_customer.shape)