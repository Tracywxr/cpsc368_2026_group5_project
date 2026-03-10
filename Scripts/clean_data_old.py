"""
CPSC 368 Phase 3 - Part 1 Data Cleaning
Group 5

Purpose:
- Clean three source datasets
- Export three cleaned source CSVs
- Build two combined analysis CSVs
- Build three database-ready CSVs based on the SQL schema
- Record row counts for report writing
"""

# ============================================================
# IMPORTS
# ============================================================

import os
import pandas as pd

# ============================================================
# CONFIGURATION
# ============================================================

DATA_DIR = "data"
RAW_DIR = os.path.join(DATA_DIR, "raw")
CLEANED_DIR = os.path.join(DATA_DIR, "cleaned")
COMBINED_DIR = os.path.join(DATA_DIR, "combined")
DB_READY_DIR = os.path.join(DATA_DIR, "db_ready")
NOTES_DIR = "notes"

BASICS_FILE = os.path.join(RAW_DIR, "title.basics.tsv")
AKAS_FILE = os.path.join(RAW_DIR, "title.akas.tsv")
RATINGS_FILE = os.path.join(RAW_DIR, "title.ratings.tsv")
STREAMING_FILE = os.path.join(RAW_DIR, "MoviesOnStreamingPlatforms.csv")
BOXOFFICE_FILE = os.path.join(RAW_DIR, "boxoffice_data_2024.csv")

IMDB_CLEANED_FILE = os.path.join(CLEANED_DIR, "imdb_movies_cleaned.csv")
STREAMING_CLEANED_FILE = os.path.join(CLEANED_DIR, "streaming_cleaned.csv")
BOXOFFICE_CLEANED_FILE = os.path.join(CLEANED_DIR, "boxoffice_cleaned.csv")

MOVIES_RATINGS_GENRES_FILE = os.path.join(COMBINED_DIR, "movies_ratings_genres.csv")
MOVIES_BOXOFFICE_FILE = os.path.join(COMBINED_DIR, "movies_boxoffice.csv")

DB_MOVIES_FILE = os.path.join(DB_READY_DIR, "movies.csv")
DB_RATINGS_FILE = os.path.join(DB_READY_DIR, "ratings.csv")
DB_BOXOFFICE_FILE = os.path.join(DB_READY_DIR, "boxoffice.csv")

COUNTS_FILE = os.path.join(NOTES_DIR, "part1_counts.txt")


# ============================================================
# HELPER FUNCTIONS
# ============================================================

def ensure_directories() -> None:
    """Create output folders if they do not already exist."""
    os.makedirs(CLEANED_DIR, exist_ok=True)
    os.makedirs(COMBINED_DIR, exist_ok=True)
    os.makedirs(DB_READY_DIR, exist_ok=True)
    os.makedirs(NOTES_DIR, exist_ok=True)


def clean_title(series: pd.Series) -> pd.Series:
    """
    Standardize movie titles for joining across datasets.
    Lowercase, trim whitespace, collapse repeated spaces.
    """
    return (
        series.astype(str)
        .str.strip()
        .str.lower()
        .str.replace(r"\s+", " ", regex=True)
    )


def export_csv(df: pd.DataFrame, filepath: str) -> None:
    """Export a dataframe to CSV."""
    df.to_csv(filepath, index=False)
    print(f"Saved: {filepath}")


def save_counts(counts: dict) -> None:
    """Write row counts to a text file."""
    with open(COUNTS_FILE, "w", encoding="utf-8") as f:
        for key, value in counts.items():
            f.write(f"{key}: {value}\n")
    print(f"Saved: {COUNTS_FILE}")


# ============================================================
# STEP 1: LOAD RAW DATA
# ============================================================

def load_raw_data(counts: dict):
    """Load all raw datasets with only the required columns."""
    print("Loading raw datasets...")

    basics = pd.read_csv(
        BASICS_FILE,
        sep="\t",
        usecols=["tconst", "titleType", "primaryTitle", "startYear", "genres"],
        low_memory=False
    )

    akas = pd.read_csv(
        AKAS_FILE,
        sep="\t",
        usecols=["titleId", "region"],
        low_memory=False
    )

    ratings = pd.read_csv(
        RATINGS_FILE,
        sep="\t",
        usecols=["tconst", "averageRating"],
        low_memory=False
    )

    streaming = pd.read_csv(
        STREAMING_FILE,
        usecols=["Title", "Year", "Age", "Rotten Tomatoes"],
        low_memory=False
    )

    boxoffice = pd.read_csv(
        BOXOFFICE_FILE,
        usecols=["Year", "Title", "Gross"],
        low_memory=False
    )

    counts["basics_original"] = len(basics)
    counts["akas_original"] = len(akas)
    counts["ratings_original"] = len(ratings)
    counts["streaming_original"] = len(streaming)
    counts["boxoffice_original"] = len(boxoffice)

    return basics, akas, ratings, streaming, boxoffice


# ============================================================
# STEP 2: CLEAN IMDb BASICS
# ============================================================

def clean_basics(basics: pd.DataFrame, counts: dict) -> pd.DataFrame:
    """
    Clean title.basics.tsv:
    - replace \\N
    - keep only movies
    - keep years 2015-2020
    - drop missing title/year/genres
    """
    print("Cleaning title.basics.tsv...")

    basics = basics.replace("\\N", pd.NA)

    basics = basics[basics["titleType"] == "movie"]
    counts["basics_after_movie_filter"] = len(basics)

    basics = basics.dropna(subset=["primaryTitle", "startYear", "genres"])

    basics["startYear"] = pd.to_numeric(basics["startYear"], errors="coerce")
    basics = basics.dropna(subset=["startYear"])

    basics = basics[(basics["startYear"] >= 2015) & (basics["startYear"] <= 2020)]
    counts["basics_after_year_filter"] = len(basics)

    return basics


# ============================================================
# STEP 3: CLEAN IMDb AKAS
# ============================================================

def clean_akas(akas: pd.DataFrame, counts: dict) -> pd.DataFrame:
    """
    Clean title.akas.tsv:
    - replace \\N
    - keep only US / CA region rows
    - deduplicate by titleId
    """
    print("Cleaning title.akas.tsv...")

    akas = akas.replace("\\N", pd.NA)
    akas = akas[akas["region"].isin(["US", "CA"])]
    counts["akas_after_region_filter"] = len(akas)

    akas = akas.drop_duplicates(subset=["titleId"])
    counts["akas_after_dedup"] = len(akas)

    return akas


# ============================================================
# STEP 4: CLEAN IMDb RATINGS
# ============================================================

def clean_ratings(ratings: pd.DataFrame, counts: dict) -> pd.DataFrame:
    """
    Clean title.ratings.tsv:
    - replace \\N
    - convert averageRating to numeric
    - drop missing ratings
    """
    print("Cleaning title.ratings.tsv...")

    ratings = ratings.replace("\\N", pd.NA)
    ratings = ratings.dropna(subset=["averageRating"])

    ratings["averageRating"] = pd.to_numeric(ratings["averageRating"], errors="coerce")
    ratings = ratings.dropna(subset=["averageRating"])

    counts["ratings_after_cleaning"] = len(ratings)

    return ratings


# ============================================================
# STEP 5: MERGE IMDb DATASETS
# ============================================================

def build_imdb_movies_cleaned(
    basics: pd.DataFrame,
    akas: pd.DataFrame,
    ratings: pd.DataFrame,
    counts: dict
) -> pd.DataFrame:
    """
    Merge cleaned IMDb components into one cleaned source dataset.

    Join order:
    - basics + ratings on tconst
    - result + akas on tconst = titleId
    """
    print("Merging cleaned IMDb datasets...")

    imdb = basics.merge(ratings, on="tconst", how="inner")
    counts["imdb_after_basics_ratings_join"] = len(imdb)

    imdb = imdb.merge(akas, left_on="tconst", right_on="titleId", how="inner")
    counts["imdb_after_akas_join"] = len(imdb)

    imdb = imdb[["tconst", "primaryTitle", "startYear", "genres", "averageRating"]].drop_duplicates()

    imdb = imdb.rename(columns={
        "tconst": "movie_id",
        "primaryTitle": "title",
        "startYear": "year",
        "averageRating": "imdb_rating"
    })

    imdb["year"] = imdb["year"].astype(int)

    imdb = imdb.drop_duplicates(subset=["movie_id"])
    counts["imdb_movies_cleaned"] = len(imdb)

    return imdb[["movie_id", "title", "year", "genres", "imdb_rating"]]


# ============================================================
# STEP 6: CLEAN STREAMING DATASET
# ============================================================

def build_streaming_cleaned(streaming: pd.DataFrame, counts: dict) -> pd.DataFrame:
    """
    Clean MoviesOnStreamingPlatforms.csv:
    - keep required columns only
    - drop missing title/year/age/rotten_tomatoes
    - convert year to numeric
    - keep years 2015-2020 only
    - convert Rotten Tomatoes from x/100 to numeric
    - standardize title for joining
    - deduplicate by standardized title + year
    """
    print("Cleaning MoviesOnStreamingPlatforms.csv...")

    streaming = streaming.replace("\\N", pd.NA)
    streaming = streaming.dropna(subset=["Title", "Year", "Age", "Rotten Tomatoes"])

    streaming["Year"] = pd.to_numeric(streaming["Year"], errors="coerce")
    streaming = streaming.dropna(subset=["Year"])

    streaming = streaming[(streaming["Year"] >= 2015) & (streaming["Year"] <= 2020)]

    streaming["Rotten Tomatoes"] = (
        streaming["Rotten Tomatoes"]
        .astype(str)
        .str.split("/")
        .str[0]
    )
    streaming["Rotten Tomatoes"] = pd.to_numeric(streaming["Rotten Tomatoes"], errors="coerce")
    streaming = streaming.dropna(subset=["Rotten Tomatoes"])

    streaming = streaming.rename(columns={
        "Title": "title",
        "Year": "year",
        "Age": "age",
        "Rotten Tomatoes": "rotten_tomatoes"
    })

    streaming["year"] = streaming["year"].astype(int)

    streaming["join_title"] = clean_title(streaming["title"])
    streaming["join_year"] = streaming["year"].astype(int)

    streaming = streaming.drop_duplicates(subset=["join_title", "join_year"])
    counts["streaming_cleaned"] = len(streaming)

    return streaming[["title", "year", "age", "rotten_tomatoes"]]


# ============================================================
# STEP 7: CLEAN BOX OFFICE DATASET
# ============================================================

def build_boxoffice_cleaned(boxoffice: pd.DataFrame, counts: dict) -> pd.DataFrame:
    """
    Clean boxoffice_data_2024.csv:
    - keep required columns only
    - drop missing title/year/gross
    - convert year to numeric
    - keep years 2015-2020 only
    - convert gross from "$123,456" to numeric
    - standardize title for joining
    - deduplicate by standardized title + year
    """
    print("Cleaning boxoffice_data_2024.csv...")

    boxoffice = boxoffice.replace("\\N", pd.NA)
    boxoffice = boxoffice.dropna(subset=["Title", "Year", "Gross"])

    boxoffice["Year"] = pd.to_numeric(boxoffice["Year"], errors="coerce")
    boxoffice = boxoffice.dropna(subset=["Year"])

    boxoffice = boxoffice[(boxoffice["Year"] >= 2015) & (boxoffice["Year"] <= 2020)]

    boxoffice["Gross"] = (
        boxoffice["Gross"]
        .astype(str)
        .str.replace("$", "", regex=False)
        .str.replace(",", "", regex=False)
    )
    boxoffice["Gross"] = pd.to_numeric(boxoffice["Gross"], errors="coerce")
    boxoffice = boxoffice.dropna(subset=["Gross"])

    boxoffice = boxoffice.rename(columns={
        "Title": "title",
        "Year": "year",
        "Gross": "gross"
    })

    boxoffice["year"] = boxoffice["year"].astype(int)

    boxoffice["join_title"] = clean_title(boxoffice["title"])
    boxoffice["join_year"] = boxoffice["year"].astype(int)

    boxoffice = boxoffice.drop_duplicates(subset=["join_title", "join_year"])
    counts["boxoffice_cleaned"] = len(boxoffice)

    return boxoffice[["title", "year", "gross"]]


# ============================================================
# STEP 8: BUILD COMBINED DATASET FOR RQ1 + RQ2
# ============================================================

def build_movies_ratings_genres(
    imdb: pd.DataFrame,
    streaming: pd.DataFrame,
    counts: dict
) -> pd.DataFrame:
    """
    Merge cleaned IMDb dataset with cleaned streaming dataset.

    Join on:
    - standardized title
    - year
    """
    print("Building movies_ratings_genres.csv...")

    imdb_temp = imdb.copy()
    imdb_temp["join_title"] = clean_title(imdb_temp["title"])
    imdb_temp["join_year"] = imdb_temp["year"].astype(int)

    streaming_temp = streaming.copy()
    streaming_temp["join_title"] = clean_title(streaming_temp["title"])
    streaming_temp["join_year"] = streaming_temp["year"].astype(int)

    merged = imdb_temp.merge(
        streaming_temp,
        on=["join_title", "join_year"],
        how="inner",
        suffixes=("_imdb", "_streaming")
    )

    merged = merged.rename(columns={
        "title_imdb": "title",
        "year_imdb": "year"
    })

    merged = merged[
        ["movie_id", "title", "year", "genres", "imdb_rating", "rotten_tomatoes", "age"]
    ].drop_duplicates()

    counts["movies_ratings_genres"] = len(merged)

    return merged


# ============================================================
# STEP 9: BUILD COMBINED DATASET FOR RQ3
# ============================================================

def build_movies_boxoffice(
    movies_ratings_genres: pd.DataFrame,
    boxoffice: pd.DataFrame,
    counts: dict
) -> pd.DataFrame:
    """
    Merge movies_ratings_genres with cleaned box office dataset.

    Join on:
    - standardized title
    - year
    """
    print("Building movies_boxoffice.csv...")

    temp_movies = movies_ratings_genres.copy()
    temp_movies["join_title"] = clean_title(temp_movies["title"])
    temp_movies["join_year"] = temp_movies["year"].astype(int)

    temp_boxoffice = boxoffice.copy()
    temp_boxoffice["join_title"] = clean_title(temp_boxoffice["title"])
    temp_boxoffice["join_year"] = temp_boxoffice["year"].astype(int)

    merged = temp_movies.merge(
        temp_boxoffice,
        on=["join_title", "join_year"],
        how="inner",
        suffixes=("_movies", "_boxoffice")
    )

    merged = merged[
        ["movie_id", "title_movies", "year_movies", "age", "imdb_rating", "gross"]
    ].drop_duplicates()

    merged = merged.rename(columns={
        "title_movies": "title",
        "year_movies": "year"
    })

    counts["movies_boxoffice"] = len(merged)

    return merged


# ============================================================
# STEP 10: BUILD DATABASE-READY TABLE CSVs
# ============================================================

def build_db_ready_tables(
    movies_ratings_genres: pd.DataFrame,
    movies_boxoffice: pd.DataFrame,
    counts: dict
):
    """
    Build normalized CSVs that match the planned SQL schema.

    Output tables:
    - movies.csv
    - ratings.csv
    - boxoffice.csv
    """
    print("Building db_ready table CSVs...")

    movies_table = movies_ratings_genres[
        ["movie_id", "title", "year", "genres", "age"]
    ].drop_duplicates(subset=["movie_id"])

    ratings_table = movies_ratings_genres[
        ["movie_id", "imdb_rating", "rotten_tomatoes"]
    ].drop_duplicates(subset=["movie_id"])

    boxoffice_table = movies_boxoffice[
        ["movie_id", "gross"]
    ].drop_duplicates(subset=["movie_id"])

    counts["db_movies"] = len(movies_table)
    counts["db_ratings"] = len(ratings_table)
    counts["db_boxoffice"] = len(boxoffice_table)

    return movies_table, ratings_table, boxoffice_table


# ============================================================
# STEP 11: MAIN WORKFLOW
# ============================================================

def main() -> None:
    print("=" * 60)
    print("CPSC 368 Phase 3 - Part 1 Data Cleaning")
    print("=" * 60)

    ensure_directories()
    counts = {}

    # --------------------------------------------------------
    # Load raw datasets
    # --------------------------------------------------------
    basics, akas, ratings, streaming, boxoffice = load_raw_data(counts)

    # --------------------------------------------------------
    # Clean and build cleaned source datasets
    # --------------------------------------------------------
    basics_clean = clean_basics(basics, counts)
    akas_clean = clean_akas(akas, counts)
    ratings_clean = clean_ratings(ratings, counts)

    imdb_movies_cleaned = build_imdb_movies_cleaned(
        basics_clean, akas_clean, ratings_clean, counts
    )
    export_csv(imdb_movies_cleaned, IMDB_CLEANED_FILE)

    streaming_cleaned = build_streaming_cleaned(streaming, counts)
    export_csv(streaming_cleaned, STREAMING_CLEANED_FILE)

    boxoffice_cleaned = build_boxoffice_cleaned(boxoffice, counts)
    export_csv(boxoffice_cleaned, BOXOFFICE_CLEANED_FILE)

    # --------------------------------------------------------
    # Build combined analysis datasets
    # --------------------------------------------------------
    movies_ratings_genres = build_movies_ratings_genres(
        imdb_movies_cleaned, streaming_cleaned, counts
    )
    export_csv(movies_ratings_genres, MOVIES_RATINGS_GENRES_FILE)

    movies_boxoffice = build_movies_boxoffice(
        movies_ratings_genres, boxoffice_cleaned, counts
    )
    export_csv(movies_boxoffice, MOVIES_BOXOFFICE_FILE)

    # --------------------------------------------------------
    # Build database-ready normalized tables
    # --------------------------------------------------------
    db_movies, db_ratings, db_boxoffice = build_db_ready_tables(
        movies_ratings_genres, movies_boxoffice, counts
    )
    export_csv(db_movies, DB_MOVIES_FILE)
    export_csv(db_ratings, DB_RATINGS_FILE)
    export_csv(db_boxoffice, DB_BOXOFFICE_FILE)

    # --------------------------------------------------------
    # Save row counts and print summary
    # --------------------------------------------------------
    save_counts(counts)

    print("\nRow count summary:")
    for key, value in counts.items():
        print(f"{key}: {value}")

    print("\nDone.")


# ============================================================
# RUN SCRIPT
# ============================================================

if __name__ == "__main__":
    main()