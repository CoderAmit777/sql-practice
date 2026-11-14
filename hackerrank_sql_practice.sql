SELECT 
CASE
    WHEN A=B AND B=C AND C=A THEN "Equilateral"
    WHEN A=B AND A != C AND A+B>C OR B = C AND A!= B AND B+C>C  OR A = C AND B!= C AND A+C>B THEN "Isosceles"
    WHEN A!=B AND B!=C AND C!= A AND A+B>C THEN "Scalene"
    ELSE "Not A Triangle"
    
END
FROM TRIANGLES;
