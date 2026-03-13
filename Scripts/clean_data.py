"""
CPSC 368 Phase 3 - Part 1 Data Cleaning
Group 5

Purpose:
- Clean 5 source datasets
- Export 5 cleaned source CSVs
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

DATA_DIR = "../data"
RAW_DIR = os.path.join(DATA_DIR, "raw")
CLEANED_DIR = os.path.join(DATA_DIR, "cleaned")
NOTES_DIR = "../notes"

BASICS_FILE = os.path.join(RAW_DIR, "title.basics.tsv.gz")
AKAS_FILE = os.path.join(RAW_DIR, "title.akas.tsv.gz")
RATINGS_FILE = os.path.join(RAW_DIR, "title.ratings.tsv.gz")
STREAMING_FILE = os.path.join(RAW_DIR, "MoviesOnStreamingPlatforms.csv")
BOXOFFICE_FILE = os.path.join(RAW_DIR, "boxoffice_data_2024.csv")

IMDB_BASICS_CLEANED_FILE = os.path.join(CLEANED_DIR, "imdb_basics_cleaned.csv")
IMDB_AKAS_CLEANED_FILE = os.path.join(CLEANED_DIR, "imdb_akas_cleaned.csv")
IMDB_RATINGS_CLEANED_FILE = os.path.join(CLEANED_DIR, "imdb_ratings_cleaned.csv")
STREAMING_CLEANED_FILE = os.path.join(CLEANED_DIR, "streaming_cleaned.csv")
BOXOFFICE_CLEANED_FILE = os.path.join(CLEANED_DIR, "boxoffice_cleaned.csv")

COUNTS_FILE = os.path.join(NOTES_DIR, "part1_counts.txt")


# ============================================================
# HELPER FUNCTIONS
# ============================================================

def ensure_directories() -> None:
    """Create output folders if they do not already exist."""
    os.makedirs(CLEANED_DIR, exist_ok=True)
    os.makedirs(NOTES_DIR, exist_ok=True)

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
    Clean title.basics.tsv.gz:
    - replace \\N
    - keep only movies
    - keep years 2015-2020
    - drop missing title/year/genres
    """
    print("Cleaning title.basics.tsv.gz...")

    basics = basics.replace("\\N", pd.NA)

    basics = basics[basics["titleType"] == "movie"]
    counts["basics_after_movie_filter"] = len(basics)

    basics = basics.dropna(subset=["primaryTitle", "startYear", "genres"])

    basics["startYear"] = pd.to_numeric(basics["startYear"], errors="coerce")
    basics = basics.dropna(subset=["startYear"])

    basics = basics[(basics["startYear"] >= 2015) & (basics["startYear"] <= 2020)]
    counts["basics_after_year_filter_cleaned"] = len(basics)

    return basics


# ============================================================
# STEP 3: CLEAN IMDb AKAS
# ============================================================

def clean_akas(akas: pd.DataFrame, counts: dict) -> pd.DataFrame:
    """
    Clean title.akas.tsv.gz:
    - replace \\N
    - keep only US / CA region rows
    - remove duplicate titleId entries
    """
    print("Cleaning title.akas.tsv.gz...")

    akas = akas.replace("\\N", pd.NA)
    
    akas = akas[akas["region"].isin(["US", "CA"])]
    counts["akas_after_region_filter"] = len(akas)

    akas = akas.drop_duplicates(subset=["titleId"])
    counts["akas_after_dedup_cleaned"] = len(akas)

    return akas

# ============================================================
# STEP 4: CLEAN IMDb RATINGS
# ============================================================

def clean_ratings(ratings: pd.DataFrame, counts: dict) -> pd.DataFrame:
    """
    Clean title.ratings.tsv.gz:
    - replace \\N
    - convert averageRating to numeric
    - drop missing ratings
    """
    print("Cleaning title.ratings.tsv.gz...")

    ratings = ratings.replace("\\N", pd.NA)
    ratings = ratings.dropna(subset=["averageRating"])

    ratings["averageRating"] = pd.to_numeric(ratings["averageRating"], errors="coerce")
    ratings = ratings.dropna(subset=["averageRating"])

    counts["ratings_cleaned"] = len(ratings)

    return ratings

# ============================================================
# STEP 6: CLEAN STREAMING DATASET
# ============================================================

def clean_streaming(streaming: pd.DataFrame, counts: dict) -> pd.DataFrame:
    """
    Clean MoviesOnStreamingPlatforms.csv:
    - keep required columns only
    - drop missing title/year/age/rotten_tomatoes
    - convert year to numeric
    - keep years 2015-2020 only
    - convert Rotten Tomatoes from x/100 to numeric
    - rename columns for consistency
    - remove duplicate title-year rows
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
    
    streaming = streaming.drop_duplicates(subset=["title", "year"])
    counts["streaming_cleaned"] = len(streaming)

    return streaming[["title", "year", "age", "rotten_tomatoes"]]


# ============================================================
# STEP 7: CLEAN BOX OFFICE DATASET
# ============================================================

def clean_boxoffice(boxoffice: pd.DataFrame, counts: dict) -> pd.DataFrame:
    """
    Clean boxoffice_data_2024.csv:
    - keep required columns only
    - drop missing title/year/gross
    - convert year to numeric
    - keep years 2015-2020 only
    - convert gross from "$123,456" to numeric
    - rename columns for consistency
    - remove duplicate title-year rows
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

    boxoffice = boxoffice.drop_duplicates(subset=["title", "year"])
    counts["boxoffice_cleaned"] = len(boxoffice)

    return boxoffice[["title", "year", "gross"]]


# ============================================================
# STEP 8: MAIN WORKFLOW
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
    export_csv(basics_clean, IMDB_BASICS_CLEANED_FILE)
    
    akas_clean = clean_akas(akas, counts)
    export_csv(akas_clean, IMDB_AKAS_CLEANED_FILE)
    
    ratings_clean = clean_ratings(ratings, counts)
    export_csv(ratings_clean, IMDB_RATINGS_CLEANED_FILE)

    streaming_cleaned = clean_streaming(streaming, counts)
    export_csv(streaming_cleaned, STREAMING_CLEANED_FILE)

    boxoffice_cleaned = clean_boxoffice(boxoffice, counts)
    export_csv(boxoffice_cleaned, BOXOFFICE_CLEANED_FILE)

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