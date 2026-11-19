WITH SCEMA AS (
    SELECT
    Name,
    Occupation,
    ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) 
    AS ROW_SCEMA
    FROM OCCUPATIONS
)
SELECT 
    MAX(CASE WHEN Occupation = "Doctor" THEN Name END) AS DOCTOR,
    MAX(CASE WHEN Occupation = "Professor" THEN Name END) AS PROFESSOR,
    MAX(CASE WHEN Occupation = "Singer" THEN Name END) AS SINGER,
    MAX(CASE WHEN Occupation = "Actor" THEN Name END) AS ACTOR
FROM SCEMA
GROUP BY ROW_SCEMA
ORDER BY ROW_SCEMA;