"""
Q3: Data Loading into MongoDB
This script:
1. Connects to UBC MongoDB via SSH tunnel
2. Reads all cleaned CSV data files
3. Transforms them into the movies document structure
4. Loads the documents into the 'movies' collection
"""

import pandas as pd
from pymongo import MongoClient

# ----------------------------
# STEP 0: User configuration
# ----------------------------
# CWL = 'yxin04' 
# SNUM = '40949349'
CWL = 'xchen165' 
SNUM = '97572945'
DB_NAME = CWL
COLLECTION_NAME = 'movies'

# CSV file paths (all cleaned data from Phase 3)
IMDB_BASICS_FILE = "data/cleaned/imdb_basics_cleaned.csv"
IMDB_RATINGS_FILE = "data/cleaned/imdb_ratings_cleaned.csv"
IMDB_AKAS_FILE = "data/cleaned/imdb_akas_cleaned.csv"
BOXOFFICE_FILE = "data/cleaned/boxoffice_cleaned.csv"
STREAMING_FILE = "data/cleaned/streaming_cleaned.csv"

# ----------------------------
# STEP 1: Connect to MongoDB
# ----------------------------
if CWL.strip() == "" or SNUM.strip() == "":
    raise ValueError("You must set CWL and SNUM before running the script.")

connection_string = f"mongodb://{CWL}:a{SNUM}@localhost:27017/{DB_NAME}"
client = MongoClient(connection_string)

# Access the database and collection
db = client[DB_NAME]
movies_col = db[COLLECTION_NAME]
print(f"Connected to MongoDB collection '{COLLECTION_NAME}' in database '{DB_NAME}'")

# ----------------------------
# STEP 2: Read all cleaned CSV files
# ----------------------------
basics = pd.read_csv(IMDB_BASICS_FILE)
ratings = pd.read_csv(IMDB_RATINGS_FILE)
akas = pd.read_csv(IMDB_AKAS_FILE)
boxoffice = pd.read_csv(BOXOFFICE_FILE)
streaming = pd.read_csv(STREAMING_FILE)

print("All CSV files loaded successfully.")

# ----------------------------
# STEP 3: Rename columns consistently
# ----------------------------
basics = basics.rename(columns={
    "tconst": "movieID",
    "primaryTitle": "title",
    "startYear": "year"
})

ratings = ratings.rename(columns={
    "tconst": "movieID",
    "averageRating": "IMDbRatings"
})

streaming = streaming.rename(columns={
    "title": "title",
    "year": "year",
    "age": "age",
    "rotten_tomatoes": "RottenTomatoesRatings"
})

boxoffice = boxoffice.rename(columns={
    "title": "title",
    "year": "year"
})

# ----------------------------
# STEP 4: Merge datasets
# ----------------------------
# basics INNER JOIN streaming
movies_df = basics.merge(streaming, on=['title', 'year'], how='left')

# LEFT JOIN ratings
movies_df = movies_df.merge(ratings, on='movieID', how='left')

# Restrict boxoffice to matched movies first
boxoffice_matched = boxoffice.merge(
    movies_df[['movieID', 'title', 'year']],
    on=['title', 'year'],
    how='inner'
)

# Merge boxoffice into movies
movies_df = movies_df.merge(
    boxoffice_matched[['movieID', 'gross']],
    on='movieID',
    how='left'
)

# Merge akas
akas_grouped = akas.groupby('titleId')['region'].apply(list).reset_index()

movies_df = movies_df.merge(
    akas_grouped,
    left_on='movieID',
    right_on='titleId',
    how='left'
).drop(columns=['titleId'])

# Remove duplicate movies
movies_df = movies_df.drop_duplicates(subset=['movieID'])

# ----------------------------
# STEP 5: Create 'isAdult' column
# ----------------------------
movies_df["isAdult"] = movies_df["age"].apply(lambda x: True if str(x).strip() == "18+" else False)

# ----------------------------
# STEP 6: Transform to MongoDB document structure
# ----------------------------
documents = []
for _, row in movies_df.iterrows():
    doc = {
        "_id": row['movieID'],           # movieID as unique _id
        "title": row['title'],
        "year": int(row['year']) if pd.notnull(row['year']) else None,
        "genres": row['genres'].split(",") if pd.notnull(row['genres']) else [],
        "isAdult": row['isAdult'],
        "ratings": {
            "imdb": float(row['IMDbRatings'])*10 if pd.notnull(row['IMDbRatings']) else None,
            "rottenTomatoes": float(row['RottenTomatoesRatings']) if pd.notnull(row['RottenTomatoesRatings']) else None
        },
        "boxOffice": {
            "gross": int(row['gross']) if pd.notnull(row['gross']) else None
        },
        "akas_regions": row['region'] if pd.notnull(row['region']) else []
    }
    documents.append(doc)

print(f"Prepared {len(documents)} movie documents for insertion.")

# ----------------------------
# STEP 7: Insert into MongoDB
# ----------------------------

# clear existing collection first to avoid duplicate key errors
movies_col.delete_many({})

if documents:
    result = movies_col.insert_many(documents)
    print(f"Inserted {len(result.inserted_ids)} documents into MongoDB.")
else:
    print("No documents to insert.")

print("Data loading completed successfully.")