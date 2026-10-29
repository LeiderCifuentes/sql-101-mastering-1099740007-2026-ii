-- Exercise 05
-- c
SELECT 
    T1.point_name AS point,
    T1.address_line As address,
    T1.municipality_code AS municipality_code,
    T1.phone_number AS phone_number,
    T1.is_active AS is_active
FROM 
    buy.collection_points AS T1
WHERE 
    T1.is_active = false OR T1.phone_number IS NULL;

/***
             point              |        address         | municipality_code | phone_number | is_active
--------------------------------+------------------------+-------------------+--------------+-----------
 Punto de Compra El Banco 1     | Calle 17 # 34-54       | 47245             | 6055026534   | f
 Punto de Compra Popayßn 1      | Carrera 21 # 4-95      | 19001             | 6057341141   | f
 Punto de Compra Hatonuevo 1    | Calle 7 # 16-89        | 44378             |              | t
 Punto de Compra Bosconia 1     | Carrera 26 # 26-43     | 20060             |              | t
 Punto de Compra CajibÝo 1      | Carrera 15 # 32-45     | 19130             |              | t
 Punto de Compra Anserma 1      | Calle 39 # 7-96        | 17042             |              | t
 Punto de Compra ApÝa 2         | Calle 9 # 14-56        | 66045             |              | f
 Punto de Compra PuracÚ 1       | Calle 16 # 50-5        | 19585             |              | t
 Punto de Compra Aipe 1         | Carrera 13 # 17-16     | 41016             |              | t
 Punto de Compra Marsella 1     | Transversal 19 # 42-92 | 66440             |              | t
 Punto de Compra Flandes 1      | Carrera 38 # 40-79     | 73275             |              | t
 Punto de Compra La Gloria 1    | Transversal 38 # 7-85  | 20383             |              | t
 Punto de Compra Tesalia 1      | Transversal 15 # 23-61 | 41797             |              | t
 Punto de Compra Icononzo 1     | Calle 19 # 35-13       | 73352             |              | t
 Punto de Compra Tello 1        | Calle 8 # 13-23        | 41799             | 6037843794   | f
 Punto de Compra Venecia 1      | Avenida 5 # 9-43       | 05861             |              | t
 Punto de Compra Turbo 1        | Avenida 32 # 34-61     | 05837             | 6075864511   | f
 Punto de Compra Paicol 2       | Calle 2 # 30-84        | 41518             | 6071743803   | f
 Punto de Compra El Tambo 2     | Calle 16 # 56-53       | 19256             |              | t
 Punto de Compra La Argentina 1 | Calle 37 # 58-65       | 41378             |              | t
 Punto de Compra Rionegro 1     | Carrera 31 # 59-80     | 68615             | 6037017611   | f
 Punto de Compra Pelaya 1       | Avenida 19 # 26-92     | 20550             |              | t
 Punto de Compra Ulloa 1        | Calle 15 # 3-50        | 76845             | 6061856687   | f
 Punto de Compra Isnos 1        | Calle 12 # 33-28       | 41359             |              | t
 Punto de Compra San Lorenzo 1  | Calle 29 # 54-48       | 52687             |              | t
 Punto de Compra TimbiquÝ 1     | Transversal 34 # 19-91 | 19809             |              | t
 Punto de Compra Nßtaga 1       | Diagonal 30 # 7-59     | 41483             | 6082388547   | f
**/