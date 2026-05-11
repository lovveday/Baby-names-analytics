import pandas as pd
import os

folder = "C:\\Users\\23481\\Downloads\\Baby names\\names"

dfs = []
for file in os.listdir(folder):
    if file.startswith("yob"):
        year = file[3:7]
        df = pd.read_csv(os.path.join(folder, file), names=["Name", "Sex", "Count"])
        df["Year"] = int(year)
        dfs.append(df)

final_df = pd.concat(dfs)
final_df.to_csv("baby_names_full.csv", index=False)



from sqlalchemy import create_engine

df = pd.read_csv("baby_names_full.csv")

engine = create_engine("postgresql://username:postgres@localhost:5432/Portfolio_db")
df.to_sql("baby_names", engine, if_exists="replace", index=False)

print("Raw data uploaded to PostgreSQL")

final_df.to_csv("data/processed/baby_names_clean.csv", index=False)