SET @row_index = -1;

SELECT ROUND(LAT_N,4)
FROM( SELECT @row_index:= @row_index +1 AS idx,LAT_N
FROM STATION
ORDER BY LAT_N ASC ) AS CALC
WHERE idx = FLOOR(@row_index/2);

