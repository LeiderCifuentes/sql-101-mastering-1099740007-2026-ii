-- Exercise 01
-- a

SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality,
    T2.department_name AS department
FROM 
    geo.municipalities AS T1
INNER JOIN geo.departments AS T2
    ON T1.department_code = T2.department_code
WHERE 
    T1.department_code = '54'
ORDER BY 
    T1.municipality_name ASC;
    
/***
 municipality_code |   municipality    |     department
-------------------+-------------------+--------------------
 54003             | ┴brego            | Norte De Santander
 54051             | Arboledas         | Norte De Santander
 54099             | Bochalema         | Norte De Santander
 54109             | Bucarasica        | Norte De Santander
 54128             | Cßchira           | Norte De Santander
 54125             | Cßcota            | Norte De Santander
 54172             | Chinßcota         | Norte De Santander
 54174             | Chitagß           | Norte De Santander
 54206             | Convenci¾n        | Norte De Santander
 54001             | C·cuta            | Norte De Santander
 54223             | Cucutilla         | Norte De Santander
 54239             | Durania           | Norte De Santander
 54245             | El Carmen         | Norte De Santander
 54250             | El Tarra          | Norte De Santander
 54261             | El Zulia          | Norte De Santander
 54313             | Gramalote         | Norte De Santander
 54344             | HacarÝ            | Norte De Santander
 54347             | Herrßn            | Norte De Santander
 54385             | La Esperanza      | Norte De Santander
 54398             | La Playa          | Norte De Santander
 54377             | Labateca          | Norte De Santander
 54405             | Los Patios        | Norte De Santander
 54418             | Lourdes           | Norte De Santander
 54480             | Mutiscua          | Norte De Santander
 54498             | Oca±a             | Norte De Santander
 54518             | Pamplona          | Norte De Santander
 54520             | Pamplonita        | Norte De Santander
**/