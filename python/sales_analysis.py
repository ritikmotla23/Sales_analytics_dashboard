import pandas as pd

# Load dataset
df = pd.read_csv("Sample-Superstore.csv")

# Basic information
print("Dataset Shape:", df.shape)

# Total Sales
print("Total Sales:", df["Sales"].sum())

# Total Profit
print("Total Profit:", df["Profit"].sum())

# Sales by Region
print("\nSales by Region:")
print(df.groupby("Region")["Sales"].sum().sort_values(ascending=False))

# Sales by Category
print("\nSales by Category:")
print(df.groupby("Category")["Sales"].sum().sort_values(ascending=False))

# Sales by Segment
print("\nSales by Customer Segment:")
print(df.groupby("Segment")["Sales"].sum().sort_values(ascending=False))

# Top 10 Products
print("\nTop 10 Products:")
print(
    df.groupby("Product Name")["Sales"]
    .sum()
    .sort_values(ascending=False)
    .head(10)
)
