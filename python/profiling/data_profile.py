import pandas as pd


def profile_data(df):

    print("Rows:", df.shape[0])
    print("Columns:", df.shape[1])

    print("\nNULL VALUES")
    print(df.isnull().sum())

    print("\nDUPLICATES")
    print(df.duplicated().sum())


customers = pd.read_csv(
    "data/raw/olist_customers_dataset.csv"
)


profile_data(customers)