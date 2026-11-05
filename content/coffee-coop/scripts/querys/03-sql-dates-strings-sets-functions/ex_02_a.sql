-- Exercise 02
-- a

SELECT
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.birth_date AS birth_date,
    DATE_PART('year', AGE(DATE '2026-09-30', T1.birth_date)) AS age_years
FROM 
    farm.farmers AS T1
WHERE 
    T1.municipality_code = '54518'
ORDER BY 
    age_years DESC
LIMIT 10;

/***
  first_name   |     last_name      | birth_date | age_years
---------------+--------------------+------------+-----------
 Adriana       | Mosquera Ospina    | 1950-08-13 |        76
 Felipe Camilo | RÝos Ospina        | 1950-03-09 |        76
 Elsa          | Ramos Cßrdenas     | 1950-01-11 |        76
 Arturo        | Contreras Pe±a     | 1950-08-18 |        76
 Antonio       | Bastidas RodrÝguez | 1950-10-02 |        75
 Rosa          | RÝos Cßrdenas      | 1951-08-26 |        75
 Gustavo       | Mosquera L¾pez     | 1951-06-05 |        75
 Diana         | DÝaz Medina        | 1951-07-19 |        75
 ╔dgar         | Burbano Arango     | 1951-05-23 |        75
 InÚs LucÝa    | DÝaz CuÚllar       | 1952-05-26 |        74
**/