import pandas as pd


def load_csv(file_name):

    path = f"data/raw/{file_name}"

    df = pd.read_csv(path)

    return df


if __name__ == "__main__":

    customers = load_csv(
        "olist_customers_dataset.csv"
    )

    print(customers.head())
    print(customers.shape)