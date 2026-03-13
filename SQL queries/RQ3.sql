
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
