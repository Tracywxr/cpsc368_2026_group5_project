
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
