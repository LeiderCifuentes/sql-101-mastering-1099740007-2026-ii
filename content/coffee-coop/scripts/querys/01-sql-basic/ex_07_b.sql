-- Exercise 07
-- b
SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.total_area_ha AS area_ha,
    T1.altitude_masl AS altitude_masl
FROM  
    farm.farms AS T1
WHERE 
    T1.municipality_code = '54518' AND T1.altitude_masl BETWEEN 1600 AND 1800
ORDER BY 
    T1.rural_district ASC, T1.total_area_ha DESC;

/***
      farm       |    rural_district    | area_ha | altitude_masl
------------------+----------------------+---------+---------------
 Los Pinos        | Alcaparral           |    1.67 |          1771
 Miraflores       | Alcaparral           |    1.29 |          1636
 Monteverde       | Alto Grande          |    2.59 |          1794
 La Loma          | Alto Grande          |    2.09 |          1667
 Bellavista       | Alto Grande          |    1.80 |          1704
 El Refugio       | Alto Grande          |    1.23 |          1661
 El Jard├¡n        | Cabecera Municipal   |    3.26 |          1620
 El Ed├®n          | Cabecera Municipal   |    2.89 |          1603
 La Milagrosa     | Cabecera Municipal   |    2.65 |          1643
 La Divisa        | Cabecera Municipal   |    1.32 |          1765
 El Recuerdo      | Caima                |    3.12 |          1758
 El Recreo        | Caima                |    1.33 |          1617
 La Victoria      | Cunuba               |    1.79 |          1780
 La Isabela       | Cunuba               |    1.74 |          1663
 La Palma         | Cunuba               |    1.60 |          1773
 La Gaitana       | Cunuba               |    1.12 |          1659
 El Oasis         | El Alizal            |    2.52 |          1692
 La Argentina     | El Escorial          |    4.41 |          1765
 El Horizonte     | El Escorial          |    1.68 |          1730
 El Recuerdo      | El Escorial          |    1.27 |          1619
 El Triunfo       | El Escorial          |    0.75 |          1715
 La Palma         | El Escorial          |    0.72 |          1636
 Tierra Linda     | El Palchal           |    3.15 |          1629
 La Aurora        | El Palchal           |    2.74 |          1684
 Las Margaritas   | El Palchal           |    0.70 |          1686
 Las Palmas       | El Rosal             |    3.67 |          1750
 Bella Vista Alta | El Rosal             |    1.03 |          1652
 San Rafael       | El Totumo            |    4.50 |          1670
 Las Delicias     | El Totumo            |    3.03 |          1791
 La Divisa        | El Totumo            |    2.62 |          1628
 El Guamo         | Fontib├│n             |    4.35 |          1731
 El Tesoro        | Fontib├│n             |    2.48 |          1780
 Las Margaritas   | Fontib├│n             |    1.20 |          1740
 El Encanto       | Fontib├│n             |    0.75 |          1639
 La Granja        | Garc├¡a               |    1.34 |          1744
 La Selva         | Garc├¡a               |    0.64 |          1736
 El Array├ín       | Iscaligua            |    7.93 |          1747
 Tierra Linda     | Iscaligua            |    5.16 |          1721
 Mi Ranchito      | Iscaligua            |    3.24 |          1620
 El Silencio      | Iscaligua            |    1.68 |          1670
 San Antonio      | Iscaligua            |    1.67 |          1635
 La Cumbre        | Jurado               |    5.92 |          1756
 Las Acacias      | Jurado               |    4.58 |          1691
 El Higuer├│n      | Jurado               |    2.92 |          1691
 Los Arrayanes    | Jurado               |    1.68 |          1719
 La Loma          | Jurado               |    0.42 |          1795
**/