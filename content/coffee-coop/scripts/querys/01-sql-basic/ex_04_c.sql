SELECT 
    T1.municipality_code AS muunicipality_code,
    T1.municipality_name AS municipality
FROM 
    geo.municipalities AS T1
WHERE 
    T1.municipality_name ILIKE '%Pamplona%';

/***
 muunicipality_code | municipality
--------------------+--------------
 54518              | Pamplona
**/