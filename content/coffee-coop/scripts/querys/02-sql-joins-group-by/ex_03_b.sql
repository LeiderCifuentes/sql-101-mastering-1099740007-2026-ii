-- Exercise 03
-- b

SELECT
    T2.point_name AS collection_point
FROM 
    buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
    AND T1.delivery_id LIKE 'DLV-20260930-%'
WHERE 
    T1.delivery_id IS NULL


/***
           collection_point
--------------------------------------
 Punto de Compra Aipe 1
 Punto de Compra Aipe 2
 Punto de Compra AndalucÝa 1
 Punto de Compra ApÝa 1
 Punto de Compra Armero Guayabal 1
 Punto de Compra Belmira 1
 Punto de Compra Caldono 1
 Punto de Compra Caloto 1
 Punto de Compra Carmen De Apicalß 2
 Punto de Compra Chinßcota 1
 Punto de Compra Circasia 1
 Punto de Compra El Tambo 2
 Punto de Compra GuatapÚ 1
 Punto de Compra Gußtica 2
 Punto de Compra Herrßn 1
 Punto de Compra Hobo 1
 Punto de Compra Icononzo 1
 Punto de Compra La Argentina 1
 Punto de Compra La Gloria 1
 Punto de Compra Marulanda 1
 Punto de Compra Marulanda 2
 Punto de Compra Murillo 1
 Punto de Compra Pailitas 1
 Punto de Compra Pelaya 2
 Punto de Compra Policarpa 1
 Punto de Compra QuinchÝa 1
 Punto de Compra Rioblanco 1
**/