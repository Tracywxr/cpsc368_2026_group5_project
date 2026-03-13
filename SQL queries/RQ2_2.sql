
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
