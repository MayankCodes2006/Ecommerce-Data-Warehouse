import os

PROJECT_PATH = os.getcwd()

DATA_PATH = os.path.join(
    PROJECT_PATH,
    "data",
    "raw"
)

DATABASE_NAME = "EcommerceDW"

print(DATA_PATH)