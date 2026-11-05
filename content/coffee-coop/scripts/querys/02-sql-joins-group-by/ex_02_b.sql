-- Exercise 02
-- b

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name
    
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE
    T1.municipality_code = '54518'
    AND T2.farm_id IS NULL;

/***
 farmer_id | first_name | last_name | farm_id
-----------+------------+-----------+---------
(0 filas)

**/