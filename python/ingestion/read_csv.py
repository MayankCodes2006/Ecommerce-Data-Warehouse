import pandas as pd

file_path = "../data/raw/olist_customers_dataset.csv"

df = pd.read_csv(file_path)

print(df.head())
print(df.shape)
print(df.columns)