-- Exercise 07
-- c
SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.total_area_ha AS area_ha,
    T1.altitude_masl AS altitude_masl
FROM  
    farm.farms AS T1
WHERE 
    T1.municipality_code = '54518' AND (T1.latitude IS NULL OR T1.longitude IS NULL);

/***
     farm       |    rural_district    | area_ha | altitude_masl
------------------+----------------------+---------+---------------
 El Recuerdo      | Alto Grande          |    1.47 |          1875
 La Esperanza     | El Palchal           |    1.64 |          1345
 Las Delicias     | Caima                |    1.01 |          1308
 Los Arrayanes    | Cabecera Municipal   |    3.66 |          1452
 El Brillante     | Pe├▒as                |    2.06 |          1274
 El Porvenir      | Fontib├│n             |    4.75 |          1418
 La Florida       | Pe├▒as                |    1.16 |          1657
 Los Arrayanes    | Navarro              |    1.42 |          1101
 El Guayabo       | San Francisco        |    3.20 |          1718
 El Encanto       | Fontib├│n             |    0.75 |          1639
 Cafetal Viejo    | San Jos├® De Tonchala |    2.44 |          1469
 El Vergel        | Cabecera Municipal   |    5.14 |          1437
 El Higuer├│n      | Caima                |    2.45 |          1868
 Bella Vista Alta | El Rosal             |    1.03 |          1652
 El Horizonte     | San Jos├® De Tonchala |    0.79 |          1415
 La Esperanza     | Pe├▒as                |    2.05 |          1679
 El Mes├│n         | Iscaligua            |    2.80 |          1840
 Las Mercedes     | Llano Castro         |    2.73 |          1942
 Las Orqu├¡deas    | Sabaneta Baja        |    0.78 |          2152
 La Uni├│n         | La Legua             |    2.74 |          1826
 San Antonio      | Jurado               |    1.64 |          1422
 San Luis         | Sabaneta Alta        |    1.06 |          1584
 El Danubio       | Garc├¡a               |    7.83 |          2160
 Tierra Linda     | Lengua               |    4.17 |          1864
 Tierra Linda     | Iscaligua            |    5.16 |          1721
 Los Laureles     | Pe├▒as                |    0.97 |          1549
 Bella Vista Alta | Sabaneta Baja        |   12.71 |          1350
 La Argentina     | Pe├▒as                |    3.33 |          1804
 El Triunfo       | Cabecera Municipal   |    4.15 |          1574
 La Holanda       | Cabecera Municipal   |    3.24 |          1206
 Los Naranjos     | El Rosal             |   14.08 |          2052
 La Floresta      | Alcaparral           |    4.55 |          1866
 El Guamo         | Fontib├│n             |    1.62 |          1408
 La Reserva       | Garc├¡a               |    2.05 |          1841
 El Nogal         | El Totumo            |    2.49 |          1539
 La Loma          | Sabagua              |    1.15 |          1414
 El Encanto       | San Jos├® De Tonchala |    0.80 |          1484
 El Mirador       | Fontib├│n             |    4.33 |          1492
 La Siberia       | Sabaneta Baja        |    0.71 |          1619
 El Higuer├│n      | La ÔöîPa               |    1.07 |          1430
 El Tesoro        | Pe├▒as                |    4.62 |          1398
 San Antonio      | La Legua             |    3.09 |          1832
 La Siberia       | Monteadentro         |    2.80 |          1684
 El Refugio       | Monteadentro         |    4.89 |          2242
 Santa Clara      | Cunuba               |    1.70 |          2051
 La Esperanza     | El Rosal             |    2.34 |          1399
**/