from transformation.clean_customers import clean_customers
from warehouse.load_dimension import create_dim_customer
import pandas as pd


customers = pd.read_csv(
    "data/raw/olist_customers_dataset.csv"
)


customers = clean_customers(customers)


dim_customer = create_dim_customer(
    customers
)


print(
    "Pipeline completed successfully"
)

print(dim_customer.head())