# ================================
# SQL Queries
# ================================

RQ1 = """
SELECT
    m.movieID,
    m.title,
    m.year,
    CASE
        WHEN m.age = '18+' THEN 'Adult'
        ELSE 'Non-Adult'
    END AS adult_flag,
    r.IMDbRatings * 10 AS IMDbRatings,
    r.RottenTomatoesRatings
FROM Movies m
JOIN Ratings r
    ON m.movieID = r.movieID;
"""

RQ2_1 = """
SELECT
    CASE
        WHEN m.age = '18+' THEN 'Adult'
        ELSE 'Non-Adult'
    END AS adult_flag,
    TRIM(REGEXP_SUBSTR(m.genres, '[^,]+', 1, LEVEL)) AS genre,
    COUNT(*) AS genre_count
FROM Movies m
WHERE m.year BETWEEN 2015 AND 2020
CONNECT BY LEVEL <= LENGTH(m.genres) - LENGTH(REPLACE(m.genres, ',', '')) + 1
    AND PRIOR m.movieID = m.movieID
    AND PRIOR SYS_GUID() IS NOT NULL
GROUP BY
    CASE
        WHEN m.age = '18+' THEN 'Adult'
        ELSE 'Non-Adult'
    END,
    TRIM(REGEXP_SUBSTR(m.genres, '[^,]+', 1, LEVEL))
ORDER BY adult_flag, genre_count DESC;
"""

RQ2_2 = """
SELECT
    m.movieID,
    m.title,
    m.year,
    CASE
        WHEN m.age = '18+' THEN 'Adult'
        ELSE 'Non-Adult'
    END AS adult_flag,
    m.genres,
    REGEXP_COUNT(m.genres, ',') + 1 AS genre_count
FROM Movies m;
"""

RQ3 = """
SELECT
    m.movieID,
    m.title,
    m.year,
    CASE
        WHEN m.age = '18+' THEN 'Adult'
        ELSE 'Non-Adult'
    END AS adult_flag,
    r.IMDbRatings,
    b.gross
FROM Movies m
JOIN Ratings r
    ON m.movieID = r.movieID
JOIN BoxOffice b
    ON m.movieID = b.movieID;
"""

# ================================
# Write SQL files
# ================================

queries = {
    "RQ1.sql": RQ1,
    "RQ2_1.sql": RQ2_1,
    "RQ2_2.sql": RQ2_2,
    "RQ3.sql": RQ3
}

for filename, query in queries.items():
    with open(filename, "w") as f:
        f.write(query)

print("SQL query files generated successfully.")