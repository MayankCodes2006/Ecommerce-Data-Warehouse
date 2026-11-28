import pandas as pd


def clean_customers(df):

    df["customer_city"] = (
        df["customer_city"]
        .str.strip()
        .str.upper()
    )

    df["customer_state"] = (
        df["customer_state"]
        .str.upper()
    )

    return df



customers = pd.read_csv(
    "data/raw/olist_customers_dataset.csv"
)


customers = clean_customers(customers)

print(customers.head())