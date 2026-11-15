SELECT CONCAT(Name,'(', SUBSTR(Occupation, 1,1),')')
FROM OCCUPATIONS
WHERE Occupation IN ("Actor","Doctor","Professor","Singer")
ORDER BY Name ASC;

SELECT CONCAT("There are a total of " ,count(Name)," ", LOWER(Occupation),"s.")
FROM OCCUPATIONS
WHERE Occupation IN ("Actor","Doctor","Professor","Singer")
GROUP BY Occupation
ORDER BY count(Name) ASC,Occupation ASC;
