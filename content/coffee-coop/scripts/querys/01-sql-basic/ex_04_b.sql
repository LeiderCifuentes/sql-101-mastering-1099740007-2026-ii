
SELECT 
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality
FROM 
    geo.municipalities AS T1
WHERE 
    T1.department_code = '54' AND T1.municipality_name LIKE 'San%'
ORDER BY 
    T1.department_code;

/***
 municipality_code | municipality
-------------------+--------------
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
**/