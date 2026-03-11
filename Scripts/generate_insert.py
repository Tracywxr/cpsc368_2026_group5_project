import pandas as pd

# ================================
# Load cleaned datasets
# ================================

boxoffice = pd.read_csv("data/cleaned/boxoffice_cleaned.csv")
akas = pd.read_csv("data/cleaned/imdb_akas_cleaned.csv")
basics = pd.read_csv("data/cleaned/imdb_basics_cleaned.csv")
ratings = pd.read_csv("data/cleaned/imdb_ratings_cleaned.csv")
streaming = pd.read_csv("data/cleaned/streaming_cleaned.csv")

# ================================
# Prepare columns
# ================================

basics = basics.rename(columns={
    "tconst": "movieID",
    "primaryTitle": "title",
    "startYear": "year"
})

ratings = ratings.rename(columns={
    "tconst": "movieID",
    "averageRating": "IMDbRatings"
})

boxoffice = boxoffice.rename(columns={
    "title": "title",
    "year": "year"
})

streaming = streaming.rename(columns={
    "title": "title",
    "year": "year",
    "rotten_tomatoes": "RottenTomatoesRatings"
})

# ================================
# Merge datasets
# ================================

movies = basics.merge(streaming, on=["title", "year"])
movies = movies.merge(ratings, on="movieID", how="left")

boxoffice = boxoffice.merge(movies[["movieID", "title", "year"]], on=["title","year"])

# ================================
# Open SQL file
# ================================

f = open("movie_project.sql", "w", encoding="utf-8")
f.write("SET DEFINE OFF;\n\n")

# ================================
# Drop tables
# ================================

f.write("DROP TABLE BoxOffice;\n")
f.write("DROP TABLE Ratings;\n")
f.write("DROP TABLE Movies;\n")
f.write("PURGE RECYCLEBIN;\n\n")

# ================================
# Create tables
# ================================

f.write("""
CREATE TABLE Movies (
    movieID VARCHAR(20) PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    year INTEGER NOT NULL,
    genres VARCHAR(100) NOT NULL,
    age VARCHAR(20) NOT NULL
);

CREATE TABLE BoxOffice (
    movieID VARCHAR(20) PRIMARY KEY,
    gross INTEGER NOT NULL,
    FOREIGN KEY (movieID) REFERENCES Movies(movieID)
);

CREATE TABLE Ratings (
    movieID VARCHAR(20) PRIMARY KEY,
    IMDbRatings NUMBER(3,1) NOT NULL,
    RottenTomatoesRatings NUMBER(5,2) NOT NULL,
    FOREIGN KEY (movieID) REFERENCES Movies(movieID)
);
""")

# ================================
# INSERT Movies
# ================================

for _, row in movies.iterrows():

    movieID = row["movieID"]
    title = str(row["title"]).replace("'", "''")
    year = int(row["year"])
    genres = str(row["genres"]).replace("'", "''")
    age = str(row["age"]).replace("'", "''")

    sql = f"""
INSERT INTO Movies VALUES (
'{movieID}',
'{title}',
{year},
'{genres}',
'{age}'
);
"""
    f.write(sql)

# ================================
# INSERT Ratings
# ================================

for _, row in movies.iterrows():

    if pd.isna(row["IMDbRatings"]) or pd.isna(row["RottenTomatoesRatings"]):
        continue

    movieID = row["movieID"]
    imdb = row["IMDbRatings"]
    rotten = row["RottenTomatoesRatings"]

    sql = f"""
INSERT INTO Ratings VALUES (
'{movieID}',
{imdb},
{rotten}
);
"""
    f.write(sql)

# ================================
# INSERT BoxOffice
# ================================

for _, row in boxoffice.iterrows():

    movieID = row["movieID"]
    gross = int(row["gross"])

    sql = f"""
INSERT INTO BoxOffice VALUES (
'{movieID}',
{gross}
);
"""
    f.write(sql)

# ================================
# Commit
# ================================

f.write("\nCOMMIT;\n")
f.close()

print("SQL file generated: movie_project.sql")