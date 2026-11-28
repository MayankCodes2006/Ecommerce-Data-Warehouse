import pandas as pd


def check_quality(df):

    results = {

        "rows": len(df),

        "duplicates":
        df.duplicated().sum(),

        "null_values":
        df.isnull().sum().sum()

    }

    return results


df = pd.read_csv(
    "data/raw/olist_products_dataset.csv"
)


print(check_quality(df))