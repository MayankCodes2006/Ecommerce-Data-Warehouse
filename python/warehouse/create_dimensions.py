import pandas as pd


def create_product_dimension(df):

    dim_product = df[
        [
        "product_id",
        "product_category_name",
        "product_weight_g",
        "product_length_cm",
        "product_height_cm",
        "product_width_cm"
        ]
    ]

    return dim_product



products = pd.read_csv(
    "data/raw/olist_products_dataset.csv"
)


dim_product = create_product_dimension(products)


print(dim_product.head())