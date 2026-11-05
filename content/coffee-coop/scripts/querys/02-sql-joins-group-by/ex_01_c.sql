-- Exercise 01
-- c
SELECT
    T1.delivery_id AS delivery,
    T2.farm_name AS farm,
    T3.point_name AS collection_point,
    T1.gross_weight_kg AS gross_weight_kg
FROM 
    buy.deliveries AS T1
INNER JOIN farm.farms AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.collection_points AS T3
    ON T1.collection_point_id = T3.collection_point_id
WHERE 
    T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY
    T3.point_name ASC,
    T1.gross_weight_kg DESC;

/***
      delivery       |       farm       |               collection_point               | gross_weight_kg
---------------------+------------------+----------------------------------------------+-----------------
 DLV-20260930-000164 | La Divisa        | Punto de Compra AbriaquÝ 1                   |           48.18
 DLV-20260930-000028 | El Refugio       | Punto de Compra Acevedo 1                    |          258.00
 DLV-20260930-000094 | El Refugio       | Punto de Compra Acevedo 1                    |          246.96
 DLV-20260930-000292 | La Florida       | Punto de Compra Acevedo 1                    |          122.13
 DLV-20260930-000202 | Los Guaduales    | Punto de Compra Agrado 1                     |          246.62
 DLV-20260930-000080 | El Arrayßn       | Punto de Compra Agrado 1                     |          120.11
 DLV-20260930-000075 | La Primavera     | Punto de Compra Alcalß 1                     |           61.99
 DLV-20260930-000137 | San Rafael       | Punto de Compra Aldana 1                     |          209.02
 DLV-20260930-000130 | El Refugio       | Punto de Compra Algeciras 1                  |          290.55
 DLV-20260930-000246 | Los Alpes        | Punto de Compra Algeciras 1                  |          247.42
 DLV-20260930-000249 | La Monta±a       | Punto de Compra Algeciras 1                  |          244.21
 DLV-20260930-000286 | Las Acacias      | Punto de Compra Algeciras 1                  |          194.68
 DLV-20260930-000087 | La Floresta      | Punto de Compra Algeciras 1                  |          116.95
 DLV-20260930-000282 | El ParaÝso       | Punto de Compra Altamira 1                   |          156.67
 DLV-20260930-000231 | La Palma         | Punto de Compra Altamira 1                   |          128.21
 DLV-20260930-000240 | La Primavera     | Punto de Compra AndalucÝa 2                  |          304.69
 DLV-20260930-000203 | El Horizonte     | Punto de Compra AndalucÝa 2                  |          166.57
 DLV-20260930-000079 | Las Brisas       | Punto de Compra Anserma 1                    |          176.91
 DLV-20260930-000009 | Las Delicias     | Punto de Compra Anserma 1                    |           56.80
 DLV-20260930-000157 | Las Margaritas   | Punto de Compra Anserma 2                    |          169.11
 DLV-20260930-000188 | El Placer        | Punto de Compra Anserma 2                    |           40.13
 DLV-20260930-000166 | El Oasis         | Punto de Compra Ansermanuevo 1               |          245.94
 DLV-20260930-000242 | La Cristalina    | Punto de Compra Ansermanuevo 1               |           98.23
 DLV-20260930-000007 | La Argentina     | Punto de Compra ApÝa 2                       |          404.97
 DLV-20260930-000021 | El Refugio       | Punto de Compra Aranzazu 1                   |          143.29
 DLV-20260930-000106 | El Retiro        | Punto de Compra Armero Guayabal 2            |          308.32
 DLV-20260930-000055 | La Monta±a       | Punto de Compra Armero Guayabal 2            |          124.05
**/