# Taller: Consultas Básicas en PostgreSQL
**Estudiante:** Leider Alfonso Cifuentes Mayorga
**Código:** 1099740007haga
**Materia:** Bases de Datos I

---

## Ejercicio 1. SELECT y alias - Catálogo de departamentos

### Literal a)
```sql
SELECT 
*
FROM 
    geo.departments AS T1;
```
 ```
 department_code |                     department_name 
-----------------+----------------------------------------------------------
 05              | Antioquia
 08              | Atlßntico
 11              | Bogotß, D.C.
 13              | BolÝvar
 15              | Boyacß
 17              | Caldas
 18              | Caquetß
 19              | Cauca
 20              | Cesar
 23              | C¾rdoba
 25              | Cundinamarca
 27              | Choc¾
 41              | Huila
 44              | La Guajira
 47              | Magdalena
 50              | Meta
 52              | Nari±o
 54              | Norte De Santander
 63              | Quindio
 66              | Risaralda
 68              | Santander
 70              | Sucre
 73              | Tolima
 76              | Valle Del Cauca
 81              | Arauca
 85              | Casanare
 86              | Putumayo 
 ``` 

### Literal b)
```sql
SELECT 
    T1.departament_code AS code,
    T1.departament_name AS department
FROM 
    geo.departments AS T1;
```
```
 code |                        department
------+----------------------------------------------------------
 05   | Antioquia
 08   | Atlßntico
 11   | Bogotß, D.C.
 13   | BolÝvar
 15   | Boyacß
 17   | Caldas
 18   | Caquetß
 19   | Cauca
 20   | Cesar
 23   | C¾rdoba
 25   | Cundinamarca
 27   | Choc¾
 41   | Huila
 44   | La Guajira
 47   | Magdalena
 50   | Meta
 52   | Nari±o
 54   | Norte De Santander
 63   | Quindio
 66   | Risaralda
 68   | Santander
 70   | Sucre
 73   | Tolima
 76   | Valle Del Cauca
 81   | Arauca
 85   | Casanare
 86   | Putumayo
 88   | ArchipiÚlago De San AndrÚs, Providencia Y Santa Catalina
 91   | Amazonas
 94   | GuainÝa
 95   | Guaviare
 97   | VaupÚs
 99   | Vichada
(33 filas)
```

### Literal c)
```sql
SELECT 
    T1.department_code AS code,
    T1.department_name AS department
FROM 
    geo.departments AS T1
ORDER BY 
    T1.departament_name ASC;
```
```
code |                        department
------+----------------------------------------------------------
 91   | Amazonas
 05   | Antioquia
 81   | Arauca
 88   | ArchipiÚlago De San AndrÚs, Providencia Y Santa Catalina
 08   | Atlßntico
 11   | Bogotß, D.C.
 13   | BolÝvar
 15   | Boyacß
 17   | Caldas
 18   | Caquetß
 85   | Casanare
 19   | Cauca
 20   | Cesar
 27   | Choc¾
 23   | C¾rdoba
 25   | Cundinamarca
 94   | GuainÝa
 95   | Guaviare
 41   | Huila
 44   | La Guajira
 47   | Magdalena
 50   | Meta
 52   | Nari±o
 54   | Norte De Santander
 86   | Putumayo
 63   | Quindio
 66   | Risaralda
```
---

## Ejercicio 2. WHERE con booleanos - Variedades de café

### Literal a)
```sql
SELECT  
    T1.variety_name AS variety,
    T1.species AS species,
    T1.description AS description
FROM 
    farm.coffee_varieties AS T1,
WHERE 
    T1.is_rust_resistant = TRUE;
```
```
  variety   | species |                             description
------------+---------+---------------------------------------------------------------------
 Castillo   | arabica | Variedad colombiana resistente a la roya, la mßs sembrada del paÝs.
 Colombia   | arabica | Variedad compuesta resistente a la roya, antecesora de Castillo.
 CenicafÚ 1 | arabica | Variedad de porte bajo con resistencia a la roya.
 Tabi       | arabica | Variedad de porte alto resistente a la roya.
 Robusta    | robusta | Especie Coffea canephora, de mayor contenido de cafeÝna.
```

### Literal b)
```sql
SELECT 
    T1.variety_name AS variety,
    T1.species AS species,
    T1.description AS description
FROM
    farm.coffee_varieties AS T1
WHERE 
    T1.is_rust_resistant = FALSE AND T1.species= 'arabica'
ORDER BY 
    T1.variety_name DESC;
```
```
    variety    | species |                      description
---------------+---------+--------------------------------------------------------
 TÝpica        | arabica | Variedad tradicional de porte alto.
 Pacamara      | arabica | Cruce de Pacas y Maragogipe, grano grande.
 Maragogipe    | arabica | Variedad de grano grande.
 Geisha        | arabica | Variedad de especialidad con perfil floral.
 Caturra       | arabica | Mutaci¾n de Borb¾n de porte bajo y alta productividad.
 Borb¾n Rosado | arabica | Variedad de especialidad de fruto rosado.
 Borb¾n        | arabica | Variedad tradicional de buena calidad en taza.
(7 filas)

---
```

## Ejercicio 3. Columnas calculadas - Primas de certificación

### Literal a)
```sql
SELECT 
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg AS  premium_per_kg_cop
FROM 
    farm.certifications AS T1
ORDER BY 
    T1.premium_per_kg DESC;
```
```
  certification    |              issuer               | premium_per_kg_cop
---------------------+-----------------------------------+--------------------
 Orgßnico            | Ente certificador orgßnico        |             800.00
 Bird Friendly       | Smithsonian Migratory Bird Center |             500.00
 Fairtrade           | Fairtrade International           |             400.00
 Nespresso AAA       | Nespresso / Rainforest Alliance   |             350.00
 Rainforest Alliance | Rainforest Alliance               |             300.00
 C.A.F.E. Practices  | Starbucks / SCS Global Services   |             250.00
 4C                  | 4C Services                       |             150.00
(7 filas)
```

### Literal b)
```sql
SELECT 
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg AS  premium_per_kg_cop,
    (T1.premium_per_kg * 125) AS premium_per_load_cop
FROM 
    farm.certifications AS T1
ORDER BY 
    T1.premium_per_kg DESC;
```
```
  certification    |              issuer               | premium_per_kg_cop | premium_per_load_cop
---------------------+-----------------------------------+--------------------+----------------------
 Orgßnico            | Ente certificador orgßnico        |             800.00 |            100000.00
 Bird Friendly       | Smithsonian Migratory Bird Center |             500.00 |             62500.00
 Fairtrade           | Fairtrade International           |             400.00 |             50000.00
 Nespresso AAA       | Nespresso / Rainforest Alliance   |             350.00 |             43750.00
 Rainforest Alliance | Rainforest Alliance               |             300.00 |             37500.00
 C.A.F.E. Practices  | Starbucks / SCS Global Services   |             250.00 |             31250.00
 4C                  | 4C Services                       |             150.00 |             18750.00
(7 filas)
```

### Literal c)
```sql
SELECT 
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg AS  premium_per_kg_cop,
    (T1.premium_per_kg * 125) AS premium_per_load_cop
FROM 
    farm.certifications AS T1
WHERE 
    T1.premium_per_kg >= 350
ORDER BY 
    T1.premium_per_kg DESC;

```
```
 certification |              issuer               | premium_per_kg_cop | premium_per_load_cop
---------------+-----------------------------------+--------------------+----------------------
 Orgßnico      | Ente certificador orgßnico        |             800.00 |            100000.00
 Bird Friendly | Smithsonian Migratory Bird Center |             500.00 |             62500.00
 Fairtrade     | Fairtrade International           |             400.00 |             50000.00
 Nespresso AAA | Nespresso / Rainforest Alliance   |             350.00 |             43750.00
(4 filas)

---
```

## Ejercicio 4. WHERE con LIKE - Municipios de Norte de Santander

### Literal a)
```sql
SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality
FROM 
    geo.municipalities AS T1
WHERE 
    T1.department_code = '54'
ORDER BY 
    T1.department_code;
```
```
 municipality_code |   municipality
-------------------+-------------------
 54001             | C·cuta
 54003             | ┴brego
 54051             | Arboledas
 54099             | Bochalema
 54109             | Bucarasica
 54125             | Cßcota
 54128             | Cßchira
 54172             | Chinßcota
 54174             | Chitagß
 54206             | Convenci¾n
 54223             | Cucutilla
 54239             | Durania
 54245             | El Carmen
 54250             | El Tarra
 54261             | El Zulia
 54313             | Gramalote
 54344             | HacarÝ
 54347             | Herrßn
 54377             | Labateca
 54385             | La Esperanza
 54398             | La Playa
 54405             | Los Patios
 54418             | Lourdes
 54480             | Mutiscua
 54498             | Oca±a
 54518             | Pamplona
 54520             | Pamplonita
```

### Literal b)
```sql
SELECT 
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality
FROM 
    geo.municipalities AS T1
WHERE 
    T1.department_code = '54' AND T1.municipality_name LIKE 'San%'
ORDER BY 
    T1.department_code;
```
```
 municipality_code | municipality
-------------------+--------------
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
```

### Literal c)
```sql
SELECT 
    T1.municipality_code AS muunicipality_code,
    T1.municipality_name AS municipality
FROM 
    geo.municipalities AS T1
WHERE 
    T1.municipality_name ILIKE '%Pamplona%';
```
```
 muunicipality_code | municipality
--------------------+--------------
 54518              | Pamplona

---
```

## Ejercicio 5. IS NULL y operadores lógicos - Puntos de compra

### Literal a)
```sql
SELECT 
    T1.point_name AS point,
    T1.address_line As address,
    T1.municipality_code AS municipality_code
FROM 
    buy.collection_points AS T1
WHERE 
    T1.is_active = false;
```
```
               point            |      address       | municipality_code
----------------------------+--------------------+-------------------
 Punto de Compra El Banco 1 | Calle 17 # 34-54   | 47245
 Punto de Compra Popayßn 1  | Carrera 21 # 4-95  | 19001
 Punto de Compra ApÝa 2     | Calle 9 # 14-56    | 66045
 Punto de Compra Tello 1    | Calle 8 # 13-23    | 41799
 Punto de Compra Turbo 1    | Avenida 32 # 34-61 | 05837
 Punto de Compra Paicol 2   | Calle 2 # 30-84    | 41518
 Punto de Compra Rionegro 1 | Carrera 31 # 59-80 | 68615
 Punto de Compra Ulloa 1    | Calle 15 # 3-50    | 76845
 Punto de Compra Nßtaga 1   | Diagonal 30 # 7-59 | 41483

```

### Literal b)
```sql
SELECT 
    T1.point_name AS point,
    T1.address_line As address,
    T1.municipality_code AS municipality_code,
FROM 
    buy.collection_points AS T1
WHERE 
    T1.phone_number IS NULL
ORDER BY 
    T1.point_name;
```
```
             point              |        address         | municipality_code
--------------------------------+------------------------+-------------------
 Punto de Compra Aipe 1         | Carrera 13 # 17-16     | 41016
 Punto de Compra Anserma 1      | Calle 39 # 7-96        | 17042
 Punto de Compra ApÝa 2         | Calle 9 # 14-56        | 66045
 Punto de Compra Baraya 1       | Calle 1 # 19-77        | 41078
 Punto de Compra Bochalema 1    | Carrera 25 # 47-89     | 54099
 Punto de Compra Bosconia 1     | Carrera 26 # 26-43     | 20060
 Punto de Compra CajibÝo 1      | Carrera 15 # 32-45     | 19130
 Punto de Compra Cisneros 1     | Calle 37 # 10-5        | 05190
 Punto de Compra Coello 1       | Transversal 20 # 49-66 | 73200
 Punto de Compra El Carmen 2    | Calle 3 # 34-88        | 54245
 Punto de Compra El Tambo 2     | Calle 16 # 56-53       | 19256
 Punto de Compra Flandes 1      | Carrera 38 # 40-79     | 73275
 Punto de Compra Hatonuevo 1    | Calle 7 # 16-89        | 44378
 Punto de Compra Icononzo 1     | Calle 19 # 35-13       | 73352
 Punto de Compra Isnos 1        | Calle 12 # 33-28       | 41359
 Punto de Compra La Argentina 1 | Calle 37 # 58-65       | 41378
 Punto de Compra La Gloria 1    | Transversal 38 # 7-85  | 20383
 Punto de Compra Marsella 1     | Transversal 19 # 42-92 | 66440
 Punto de Compra Pelaya 1       | Avenida 19 # 26-92     | 20550
 Punto de Compra PuracÚ 1       | Calle 16 # 50-5        | 19585
 Punto de Compra San Lorenzo 1  | Calle 29 # 54-48       | 52687
 Punto de Compra Tesalia 1      | Transversal 15 # 23-61 | 41797
 Punto de Compra TimbiquÝ 1     | Transversal 34 # 19-91 | 19809
 Punto de Compra Turbo 2        | Calle 36 # 12-19       | 05837
 Punto de Compra Venecia 1      | Avenida 5 # 9-43       | 05861
 Punto de Compra Villa Rica 1   | Diagonal 6 # 8-43      | 19845
```

### Literal c)
```sql
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
```
```
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

---
```

## Ejercicio 6. Filtros combinados - Asociados de Pamplona

### Literal a)
```sql
SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone_number AS phone
FROM 
    farm.farmers AS T1
WHERE 
    T1.gender = 'F' AND T1.municipality_code = '54518'
ORDER BY 
    T1.last_name, T1.first_name;
```
```
document  |    first_name     |     last_name     |   phone
------------+-------------------+-------------------+------------
 768461420  | Marleny           | Agudelo Sandoval  | 3242280898
 931079279  | Edilma            | ┴lvarez Bonilla   | 3236902029
 463842401  | RocÝo             | ┴lvarez Cßrdenas  | 3047898372
 788628125  | M¾nica            | ┴lvarez Carrillo  | 3059237130
 939635303  | Marleny           | ┴lvarez Correa    | 3232410671
 1089620113 | Myriam Yuliana    | Arango Narvßez    | 3178267449
 172555225  | Edilma Gabriela   | Arias ┴lvarez     | 3213658326
 550696749  | Viviana           | Arias RamÝrez     | 3204850778
 797017145  | Isabella          | Barrera Cabrera   | 3041744702
 659942505  | Mariana           | Barrera Correa    | 3126485460
 1103932523 | Amparo            | Bastidas Chamorro | 3023807439
 1027436085 | Manuela           | Bastidas Medina   | 3508652479
 649244180  | RocÝo             | Bastidas Sußrez   | 3015208796
 21358854   | Manuela Yolanda   | Benavides Delgado | 3229418470
 737383707  | Yesenia           | Berm·dez Henao    | 3141005257
 549054771  | MarÝa             | Burbano Duarte    | 3183590387
 436957556  | JazmÝn            | Burbano Jaimes    | 3202058604
 918053770  | Nubia Juliana     | Caicedo Medina    | 3183905612
 356207226  | Luisa             | Caicedo Restrepo  | 3232775188
 358946393  | Carmen            | Cßrdenas Moreno   | 3149324862
 756369749  | Andrea            | Cardona Ruiz      | 3007467744
 65169775   | Aura              | Castillo Henao    | 3136723568
 1001030458 | Liliana Luisa     | Chamorro VÚlez    | 3002682380
 977130251  | InÚs LucÝa        | DÝaz CuÚllar      | 3507141858
 1117597835 | Cecilia Lorena    | DÝaz GarcÝa       | 3207660684
 828628976  | Diana             | DÝaz Medina       | 3023178503
 932437698  | Amparo            | Duarte Duque      | 3059102841
```

### Literal b)
```sql
SELECT 
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone_number AS phone
FROM 
    farm.farmers AS T1
WHERE 
    T1.municipality_code = '54518' AND T1.email IS NULL ;
```
```
  document  |    first_name    |     last_name      |   phone
------------+------------------+--------------------+------------
 712758473  | Wilson           | L¾pez Villamizar   | 3055094275
 727945493  | Gloria           | MarÝn Rivera       | 3225571567
 549054771  | MarÝa            | Burbano Duarte     | 3183590387
 24999630   | Esperanza        | Romero Betancur    | 3029623613
 914044314  | AncÝzar Cristian | PolanÝa Delgado    | 3028825809
 343256743  | Dora             | Hernßndez Correa   | 3166719225
 1148351420 | InÚs             | JimÚnez Jaimes     | 3104090231
 1117597835 | Cecilia Lorena   | DÝaz GarcÝa        | 3207660684
 749444168  | Emilio           | Delgado Molina     | 3118015821
 940051048  | David Germßn     | Romero Bonilla     | 3018117176
 548464915  | Yuliana          | RodrÝguez Vargas   | 3173571208
 554620706  | Nelson Samuel    | MejÝa Vera         | 3022063857
 59388780   | Juan             | Ortega Zapata      | 3217129169
 1171130241 | Elsa             | MejÝa Vera         | 3019766136
 824422301  | Hernando         | Montoya Agudelo    | 3218003724
 21358854   | Manuela Yolanda  | Benavides Delgado  | 3229418470
 1185523747 | Elsa             | Ibarra Molina      | 3189660702
 131166207  | Jaime            | MarÝn Hernßndez    | 3114778905
 35147265   | Carlos           | GutiÚrrez Pab¾n    | 3223406765
 712500733  | Esperanza        | Valencia Ortiz     | 3111830019
 922724022  | Esteban          | Salazar Parra      | 3162718294
 1135293825 | Abelardo         | PÚrez Castro       | 3245612074
 939635303  | Marleny          | ┴lvarez Correa     | 3232410671
 549847293  | Wilmer           | PÚrez Chamorro     | 3124455023
 1189704117 | Mariana          | Ortiz Ruiz         | 3004621446
 599185252  | EfraÝn           | Pinz¾n Cabrera     | 3216450755
 33787285   | RubÚn            | Ramos Chamorro     | 3244273375

```

### Literal c)
```sql
SELECT 
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone_number AS phone,
    T1.membership_date AS membership_date
FROM 
    farm.farmers AS T1
WHERE 
    T1.municipality_code = '54518' AND T1.is_active= false
ORDER BY 
    T1.membership_date ;
```
```
 document  |    first_name    |     last_name      |   phone    | membership_date
------------+------------------+--------------------+------------+-----------------
 230971064  | Manuel           | Agudelo JimÚnez    | 3219718862 | 1997-03-29
 534023693  | Myriam           | Valencia Moreno    | 3241389451 | 1998-11-03
 33787285   | RubÚn            | Ramos Chamorro     | 3244273375 | 1999-03-02
 1135293825 | Abelardo         | PÚrez Castro       | 3245612074 | 2003-06-19
 478755763  | Nicolßs          | Rivera Duque       | 3029310183 | 2003-08-11
 160538872  | Liliana          | Mosquera Uribe     | 3119365364 | 2007-09-27
 223974138  | Rodrigo Nelson   | Cabrera Villamizar | 3502554241 | 2009-05-02
 10424994   | Cristian         | Herrera Zuluaga    | 3242295228 | 2010-04-28
 1015411133 | Santiago         | Berm·dez Ruiz      | 3003993000 | 2010-11-30
 1090968710 | Ruth             | RodrÝguez PÚrez    | 3021808053 | 2010-12-11
 974842644  | Arturo           | Hernßndez Uribe    | 3058169707 | 2012-06-16
 1001030458 | Liliana Luisa    | Chamorro VÚlez     | 3002682380 | 2013-01-09
 870240973  | Jairo            | Molina Pab¾n       | 3018237329 | 2014-03-13
 89157555   | Heriberto        | JimÚnez Cßceres    | 3164266457 | 2014-07-17
 333176982  | Edilma           | Rivera Rivera      | 3126087263 | 2014-12-20
 587550249  | Gustavo          | Mosquera L¾pez     | 3119000149 | 2016-05-14
 718906996  | Nelson           | Bedoya VÚlez       | 3194564518 | 2016-12-09
 1117597835 | Cecilia Lorena   | DÝaz GarcÝa        | 3207660684 | 2017-01-11
 599185252  | EfraÝn           | Pinz¾n Cabrera     | 3216450755 | 2017-07-23
 135734682  | Diego            | Rivera JimÚnez     | 3508307641 | 2018-03-26
 914044314  | AncÝzar Cristian | PolanÝa Delgado    | 3028825809 | 2021-02-24

---
```

## Ejercicio 7. BETWEEN y ORDER BY múltiple - Fincas de altura

### Literal a)
```sql
SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.total_area_ha AS area_ha,
    T1.altitude_masl AS altitude_masl
FROM  
    farm.farms AS T1
WHERE 
    T1.municipality_code = '54518' AND T1.altitude_masl > 1800
ORDER BY 
    T1.altitude_masl DESC;
```
```
      farm      |    rural_district    | area_ha | altitude_masl
----------------+----------------------+---------+---------------
 Santa Clara    | La Legua             |    2.62 |          2300
 El Guayabo     | El Rosal             |    1.21 |          2300
 La Cascada     | Caima                |    2.49 |          2300
 El Vergel      | Sabagua              |    1.11 |          2300
 La Isabela     | Garc├¡a               |    1.36 |          2275
 El Refugio     | Monteadentro         |    4.89 |          2242
 Cafetal Viejo  | Caima                |    5.29 |          2229
 San Jos├®       | Alcaparral           |    3.12 |          2203
 El Refugio     | Sabaneta Baja        |    1.93 |          2195
 Villa Hermosa  | Pe├▒as                |    0.30 |          2181
 El Nogal       | San Jos├® De Tonchala |    3.24 |          2177
 El Para├¡so     | Navarro              |    1.67 |          2164
 El Danubio     | Garc├¡a               |    7.83 |          2160
 Las Orqu├¡deas  | Sabaneta Baja        |    0.78 |          2152
 Los Laureles   | San Jos├® De Tonchala |    0.84 |          2148
 La Granja      | El Palchal           |    2.83 |          2140
 Los Guaduales  | El Palchal           |    2.66 |          2135
 La Argentina   | Lengua               |    1.45 |          2124
 El Mes├│n       | Navarro              |    1.40 |          2122
 Las Acacias    | Cunuba               |    0.94 |          2121
 Cafetal Viejo  | La Legua             |    0.42 |          2109
 Villa Rosa     | El Alizal            |    1.81 |          2108
 Bellavista     | Cunuba               |    7.72 |          2107
 La Estrella    | Garc├¡a               |    5.51 |          2079
 El Guamo       | El Escorial          |    4.27 |          2074
 Las Margaritas | Caima                |    0.91 |          2072
 San Rafael     | San Jos├® De Tonchala |    1.02 |          2065
```

### Literal b)
```sql
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
```
```
*      farm       |    rural_district    | area_ha | altitude_masl
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
```

### Literal c)
```sql
SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.total_area_ha AS area_ha,
    T1.altitude_masl AS altitude_masl
FROM  
    farm.farms AS T1
WHERE 
    T1.municipality_code = '54518' AND (T1.latitude IS NULL OR T1.longitude IS NULL);
```
```
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

---
```

## Ejercicio 8. IN y columnas calculadas - Entregas del día

### Literal a)
```sql
SELECT 
    T1.delivery_id AS delivery,
    T1.farm_id AS farm_id,
    T1.collection_point_id AS collection_point_id,
    T1.delivered_at AS received_at,
    T1.coffee_type AS coffee_type,
    T1.gross_weight_kg AS gross_weight_kg
FROM 
    buy.deliveries AS T1
WHERE 
    T1.delivery_id LIKE '%20260930%'
ORDER BY 
    T1.delivered_at ASC;
```
```
  delivery       | farm_id | collection_point_id |     received_at     |  coffee_type  | gross_weight_kg
---------------------+---------+---------------------+---------------------+---------------+-----------------
 DLV-20260930-000001 |  121925 |                  68 | 2026-09-30 06:01:10 | dry_parchment |           51.53
 DLV-20260930-000002 |   39639 |                  48 | 2026-09-30 06:03:32 | dry_parchment |          124.98
 DLV-20260930-000003 |  228920 |                  80 | 2026-09-30 06:04:40 | wet_parchment |          112.33
 DLV-20260930-000004 |    2649 |                  90 | 2026-09-30 06:07:26 | dry_parchment |          138.29
 DLV-20260930-000005 |  163723 |                  10 | 2026-09-30 06:07:51 | dry_parchment |          256.42
 DLV-20260930-000006 |   58408 |                 170 | 2026-09-30 06:11:03 | dry_parchment |          139.81
 DLV-20260930-000007 |  201601 |                  57 | 2026-09-30 06:15:25 | dry_parchment |          404.97
 DLV-20260930-000008 |  135490 |                  53 | 2026-09-30 06:16:53 | dry_parchment |          175.92
 DLV-20260930-000009 |  108211 |                  54 | 2026-09-30 06:17:34 | dry_parchment |           56.80
 DLV-20260930-000010 |   37288 |                  67 | 2026-09-30 06:20:30 | dry_parchment |          269.43
 DLV-20260930-000011 |  160644 |                  24 | 2026-09-30 06:21:43 | dry_parchment |          166.55
 DLV-20260930-000012 |  104065 |                  59 | 2026-09-30 06:30:33 | dry_parchment |           47.86
 DLV-20260930-000013 |  112753 |                  99 | 2026-09-30 06:30:37 | dry_parchment |           47.40
 DLV-20260930-000014 |  159069 |                 131 | 2026-09-30 06:34:23 | dry_parchment |          164.91
 DLV-20260930-000015 |    9219 |                 117 | 2026-09-30 06:35:39 | dry_parchment |          136.77
 DLV-20260930-000016 |  119208 |                 124 | 2026-09-30 06:36:30 | dry_parchment |          171.44
 DLV-20260930-000017 |  130072 |                 115 | 2026-09-30 06:40:28 | dry_parchment |          545.69
 DLV-20260930-000018 |   99915 |                  29 | 2026-09-30 06:40:54 | dry_parchment |          247.11
 DLV-20260930-000019 |  192605 |                 147 | 2026-09-30 06:42:39 | wet_parchment |          106.26
 DLV-20260930-000020 |  214651 |                  88 | 2026-09-30 06:43:44 | dry_parchment |          115.75
 DLV-20260930-000021 |  154560 |                  95 | 2026-09-30 06:44:19 | dry_parchment |          143.29
 DLV-20260930-000022 |  103810 |                 103 | 2026-09-30 06:48:44 | dry_parchment |          247.73
 DLV-20260930-000023 |  149422 |                  16 | 2026-09-30 06:52:28 | dry_parchment |          221.51
 DLV-20260930-000024 |   10480 |                  78 | 2026-09-30 07:00:22 | dry_parchment |          222.49
 DLV-20260930-000025 |  209837 |                 155 | 2026-09-30 07:02:12 | dry_parchment |          176.53
 DLV-20260930-000026 |  155343 |                   8 | 2026-09-30 07:08:12 | dry_parchment |          162.24
 DLV-20260930-000027 |  206523 |                  31 | 2026-09-30 07:09:05 | dry_parchment |          184.59
 DLV-20260930-000028 |  182397 |                 133 | 2026-09-30 07:13:46 | wet_parchment |          258.00
 DLV-20260930-000029 |  138791 |                  10 | 2026-09-30 07:13:53 | dry_parchment |          231.40
 DLV-20260930-000030 |   76205 |                 123 | 2026-09-30 07:14:48 | dry_parchment |          124.95
 DLV-20260930-000031 |   71330 |                  66 | 2026-09-30 07:15:46 | dry_parchment |          107.99
 DLV-20260930-000032 |   13109 |                  86 | 2026-09-30 07:18:48 | dry_parchment |          213.33
 DLV-20260930-000033 |  208785 |                 129 | 2026-09-30 07:20:22 | dry_parchment |           49.13
 DLV-20260930-000034 |  156690 |                 153 | 2026-09-30 07:20:53 | dry_parchment |          174.83
 DLV-20260930-000035 |  190949 |                 109 | 2026-09-30 07:20:59 | dry_parchment |          235.65
 DLV-20260930-000036 |  202598 |                 117 | 2026-09-30 07:21:45 | dry_parchment |          200.54
 DLV-20260930-000037 |  220317 |                   2 | 2026-09-30 07:22:30 | wet_parchment |           64.16
 DLV-20260930-000038 |   66619 |                 109 | 2026-09-30 07:23:28 | dry_parchment |          136.73
 DLV-20260930-000039 |   11936 |                 103 | 2026-09-30 07:25:54 | dry_parchment |           86.92
 DLV-20260930-000040 |   88271 |                  76 | 2026-09-30 07:26:23 | dry_parchment |          321.49
 DLV-20260930-000041 |  193410 |                  30 | 2026-09-30 07:26:25 | dry_parchment |           45.97
 DLV-20260930-000042 |  214052 |                 103 | 2026-09-30 07:26:51 | dry_parchment |          166.41
 DLV-20260930-000043 |   80738 |                  32 | 2026-09-30 07:27:29 | dry_parchment |          239.46
 DLV-20260930-000044 |   31582 |                   9 | 2026-09-30 07:30:13 | dry_parchment |          119.26
 DLV-20260930-000045 |   37344 |                 167 | 2026-09-30 07:30:17 | dry_parchment |           60.79
 DLV-20260930-000046 |   85553 |                 140 | 2026-09-30 07:30:47 | wet_parchment |          186.73
```

### Literal b)
```sql
SELECT 
    T1.delivery_id AS delivery,
    T1.farm_id AS farm_id,
    T1.collection_point_id AS collection_point_id,
    T1.delivered_at AS received_at,
    T1.coffee_type AS coffee_type,
    T1.gross_weight_kg AS gross_weight_kg,
    (T1.gross_weight_kg / T1.bag_count) AS avg_kg_per_bag
FROM 
    buy.deliveries AS T1
WHERE 
    T1.delivery_id LIKE '%20260930%' AND T1.status = 'rejected';
```
```
      delivery       | farm_id | collection_point_id |     received_at     |  coffee_type  | gross_weight_kg |   avg_kg_per_bag
---------------------+---------+---------------------+---------------------+---------------+-----------------+---------------------
 DLV-20260930-000083 |   66435 |                   2 | 2026-09-30 09:20:30 | dry_parchment |           89.95 | 44.9750000000000000
 DLV-20260930-000109 |  216626 |                   6 | 2026-09-30 10:04:15 | dry_parchment |          311.88 | 62.3760000000000000
 DLV-20260930-000147 |   77310 |                 103 | 2026-09-30 11:17:45 | wet_parchment |           66.42 | 66.4200000000000000
 DLV-20260930-000006 |   58408 |                 170 | 2026-09-30 06:11:03 | dry_parchment |          139.81 | 46.6033333333333333
 DLV-20260930-000070 |   69157 |                   3 | 2026-09-30 08:19:57 | dry_parchment |          147.13 | 49.0433333333333333
 DLV-20260930-000253 |  143807 |                 102 | 2026-09-30 15:05:34 | dry_parchment |          253.15 | 50.6300000000000000
 DLV-20260930-000165 |  107038 |                 162 | 2026-09-30 12:15:01 | dry_parchment |          348.59 | 58.0983333333333333
 DLV-20260930-000214 |  223116 |                  44 | 2026-09-30 13:53:56 | dry_parchment |          177.63 | 59.2100000000000000
 DLV-20260930-000223 |  216415 |                  45 | 2026-09-30 14:19:21 | dry_parchment |          338.32 | 48.3314285714285714
```

### Literal c)
```sql
SELECT 
    T1.delivery_id AS delivery,
    T1.farm_id AS farm_id,
    T1.collection_point_id AS collection_point_id,
    T1.delivered_at AS received_at,
    T1.coffee_type AS coffee_type,
    T1.gross_weight_kg AS gross_weight_kg
FROM 
    buy.deliveries AS T1
WHERE 
    T1.delivery_id LIKE '%20260930%' AND (T1.coffee_type = 'wet_parchment' or T1.coffee_type = 'cherry') 
ORDER BY 
    T1.gross_weight_kg DESC;
```
```
      delivery       | farm_id | collection_point_id |     received_at     |  coffee_type  | gross_weight_kg
---------------------+---------+---------------------+---------------------+---------------+-----------------
 DLV-20260930-000081 |   19338 |                 117 | 2026-09-30 09:17:37 | cherry        |          475.13
 DLV-20260930-000187 |  231839 |                 159 | 2026-09-30 12:47:52 | cherry        |          339.30
 DLV-20260930-000105 |   13478 |                  37 | 2026-09-30 09:57:09 | wet_parchment |          277.63
 DLV-20260930-000028 |  182397 |                 133 | 2026-09-30 07:13:46 | wet_parchment |          258.00
 DLV-20260930-000133 |   44726 |                  59 | 2026-09-30 10:51:03 | cherry        |          254.83
 DLV-20260930-000094 |   99627 |                 133 | 2026-09-30 09:31:20 | cherry        |          246.96
 DLV-20260930-000129 |   89312 |                  76 | 2026-09-30 10:44:39 | wet_parchment |          206.71
 DLV-20260930-000161 |  101318 |                  24 | 2026-09-30 12:06:51 | wet_parchment |          197.04
 DLV-20260930-000046 |   85553 |                 140 | 2026-09-30 07:30:47 | wet_parchment |          186.73
 DLV-20260930-000248 |  215660 |                 166 | 2026-09-30 14:59:13 | cherry        |          159.89
 DLV-20260930-000052 |   92329 |                  96 | 2026-09-30 07:43:27 | wet_parchment |          154.42
 DLV-20260930-000260 |  215048 |                 144 | 2026-09-30 15:14:37 | cherry        |          149.08
 DLV-20260930-000217 |   91444 |                  52 | 2026-09-30 14:02:43 | wet_parchment |          132.86
 DLV-20260930-000237 |  125199 |                  46 | 2026-09-30 14:45:02 | wet_parchment |          128.69
 DLV-20260930-000071 |  125140 |                 124 | 2026-09-30 08:25:30 | cherry        |          123.86
 DLV-20260930-000003 |  228920 |                  80 | 2026-09-30 06:04:40 | wet_parchment |          112.33
 DLV-20260930-000100 |  151444 |                  11 | 2026-09-30 09:49:19 | cherry        |          106.62
 DLV-20260930-000019 |  192605 |                 147 | 2026-09-30 06:42:39 | wet_parchment |          106.26
 DLV-20260930-000280 |  228280 |                   8 | 2026-09-30 16:07:06 | cherry        |           99.14
 DLV-20260930-000297 |   49306 |                  67 | 2026-09-30 16:46:11 | cherry        |           98.35
 DLV-20260930-000147 |   77310 |                 103 | 2026-09-30 11:17:45 | wet_parchment |           66.42
 DLV-20260930-000037 |  220317 |                   2 | 2026-09-30 07:22:30 | wet_parchment |           64.16

---
```

## Ejercicio 9. Rangos de calidad - Análisis de laboratorio

### Literal a)
```sql
SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.yield_factor AS yield_factor,
    T1.cup_score AS cup_score
FROM 
    buy.quality_analyses AS T1
WHERE 
    T1.delivery_id LIKE '%20260930%' 
    AND T1.cup_score >= 85
ORDER BY 
    T1.cup_score DESC;
```
```
      analysis      |      delivery       | moisture_pct | yield_factor | cup_score
--------------------+---------------------+--------------+--------------+-----------
 QA-20260930-000102 | DLV-20260930-000155 |        12.31 |        94.01 |     87.28
 QA-20260930-000082 | DLV-20260930-000111 |        12.38 |        94.29 |     87.18
 QA-20260930-000137 | DLV-20260930-000295 |        12.35 |        91.07 |     87.14
 QA-20260930-000116 | DLV-20260930-000208 |        11.07 |        93.78 |     87.07
 QA-20260930-000118 | DLV-20260930-000256 |        11.16 |        92.54 |     87.04
 QA-20260930-000030 | DLV-20260930-000089 |        10.70 |        91.53 |     86.31
 QA-20260930-000089 | DLV-20260930-000203 |        11.84 |        91.41 |     86.01
 QA-20260930-000028 | DLV-20260930-000064 |        11.48 |        94.23 |     85.62
 QA-20260930-000110 | DLV-20260930-000182 |        10.64 |        88.18 |     85.25
 QA-20260930-000079 | DLV-20260930-000085 |        11.55 |        93.28 |     85.15
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |     85.05
```

### Literal b)
```sql
SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.yield_factor AS yield_factor,
    T1.cup_score AS cup_score
FROM
     buy.quality_analyses AS T1
WHERE 
    T1.delivery_id LIKE '%20260930%' 
    AND T1.moisture_pct NOT BETWEEN 10 AND 12;
```
```
     analysis      |      delivery       | moisture_pct | yield_factor | cup_score
--------------------+---------------------+--------------+--------------+-----------
 QA-20260930-000023 | DLV-20260930-000046 |        12.23 |        89.75 |
 QA-20260930-000102 | DLV-20260930-000155 |        12.31 |        94.01 |     87.28
 QA-20260930-000085 | DLV-20260930-000161 |        12.03 |        92.12 |
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 |       100.22 |
 QA-20260930-000093 | DLV-20260930-000178 |        12.11 |        92.83 |
 QA-20260930-000121 | DLV-20260930-000200 |        12.38 |        90.67 |     81.34
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 |        97.46 |     82.59
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |     85.05
 QA-20260930-000094 | DLV-20260930-000227 |        12.43 |        96.11 |
 QA-20260930-000134 | DLV-20260930-000236 |        12.48 |        89.55 |
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 |       106.52 |     84.33
 QA-20260930-000105 | DLV-20260930-000260 |        12.01 |        92.44 |
 QA-20260930-000109 | DLV-20260930-000272 |        12.18 |        95.93 |
 QA-20260930-000145 | DLV-20260930-000277 |        12.27 |        93.96 |     83.32
 QA-20260930-000149 | DLV-20260930-000286 |        12.28 |        94.58 |
 QA-20260930-000012 | DLV-20260930-000057 |        12.16 |        92.79 |
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |
 QA-20260930-000025 | DLV-20260930-000083 |        16.00 |       102.88 |
 QA-20260930-000078 | DLV-20260930-000093 |        12.01 |        91.64 |
 QA-20260930-000045 | DLV-20260930-000104 |        12.11 |        92.52 |
 QA-20260930-000069 | DLV-20260930-000109 |        15.30 |        99.98 |     83.85
 QA-20260930-000082 | DLV-20260930-000111 |        12.38 |        94.29 |     87.18
 QA-20260930-000092 | DLV-20260930-000113 |        12.39 |        90.14 |     83.16
 QA-20260930-000035 | DLV-20260930-000115 |        12.31 |        90.58 |
 QA-20260930-000076 | DLV-20260930-000116 |        12.08 |        91.70 |
 QA-20260930-000095 | DLV-20260930-000118 |        12.32 |        92.00 |     80.52
 QA-20260930-000056 | DLV-20260930-000120 |        12.40 |        93.55 |
```

### Literal c)
```sql
SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.yield_factor AS yield_factor,
    T1.cup_score AS cup_score
FROM 
    buy.quality_analyses AS T1
WHERE T1.delivery_id LIKE '%20260930%' 
    AND T1.is_accepted = FALSE 
    AND T1.observations IS NOT NULL
ORDER BY 
    T1.defects_pct DESC;
```
```
      analysis      |      delivery       | moisture_pct | yield_factor | cup_score
--------------------+---------------------+--------------+--------------+-----------
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 |        97.46 |     82.59
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 |       100.22 |
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 |       106.52 |     84.33
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 |        96.57 |
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |     85.05
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 |       103.31 |     79.98

---
```

## Ejercicio 10. Columnas generadas - Liquidaciones pendientes

### Literal a)
```sql
SELECT
   T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    T1.deductions_amount AS deductions_cop,
    T1.net_amount AS net_cop 
FROM 
    pay.settlements AS T1
WHERE  
    T1.delivery_id LIKE '%20260930%';
```
```
     settlement      |      delivery       | net_weight_kg | price_per_kg |  gross_cop  | deductions_cop |   net_cop
---------------------+---------------------+---------------+--------------+-------------+----------------+-------------
 STL-20261001-000006 | DLV-20260930-000003 |        109.68 |     22083.00 |  2422063.44 |           0.00 |  2422063.44
 STL-20261002-000030 | DLV-20260930-000004 |        137.35 |     23052.00 |  3166192.20 |       52622.11 |  3113570.09
 STL-20261001-000060 | DLV-20260930-000005 |        251.37 |     21052.00 |  5291841.24 |           0.00 |  5291841.24
 STL-20261002-000005 | DLV-20260930-000008 |        174.75 |     23230.00 |  4059442.50 |      224252.16 |  3835190.34
 STL-20261002-000004 | DLV-20260930-000010 |        265.10 |     21358.00 |  5662005.80 |      314758.77 |  5347247.03
 STL-20261003-000006 | DLV-20260930-000012 |         47.08 |     21627.00 |  1018199.16 |           0.00 |  1018199.16
 STL-20261002-000043 | DLV-20260930-000017 |        535.29 |     21294.00 | 11398465.26 |      634980.18 | 10763485.08
 STL-20261002-000018 | DLV-20260930-000020 |        113.45 |     21439.00 |  2432254.55 |           0.00 |  2432254.55
 STL-20261003-000001 | DLV-20260930-000023 |        219.26 |     22645.00 |  4965142.70 |           0.00 |  4965142.70
 STL-20261002-000006 | DLV-20260930-000025 |        173.32 |     21155.00 |  3666584.60 |           0.00 |  3666584.60
 STL-20261001-000058 | DLV-20260930-000027 |        180.33 |     22112.00 |  3987456.96 |           0.00 |  3987456.96
 STL-20261002-000024 | DLV-20260930-000029 |        228.30 |     21942.00 |  5009358.60 |           0.00 |  5009358.60
 STL-20261001-000052 | DLV-20260930-000032 |        210.78 |     22128.00 |  4664139.84 |      126132.90 |  4538006.94
 STL-20260930-000050 | DLV-20260930-000037 |         63.66 |     21964.00 |  1398228.24 |           0.00 |  1398228.24
 STL-20261002-000003 | DLV-20260930-000041 |         45.15 |     23402.00 |  1056600.30 |           0.00 |  1056600.30
 STL-20261002-000023 | DLV-20260930-000047 |         79.23 |     21571.00 |  1709070.33 |           0.00 |  1709070.33
 STL-20261001-000026 | DLV-20260930-000053 |         59.04 |     22451.00 |  1325507.04 |           0.00 |  1325507.04
 STL-20261001-000050 | DLV-20260930-000057 |        199.47 |     22064.00 |  4401106.08 |      121443.98 |  4279662.10
 STL-20261001-000049 | DLV-20260930-000060 |        161.31 |     22248.00 |  3588824.88 |           0.00 |  3588824.88
 STL-20261003-000008 | DLV-20260930-000064 |         49.98 |     21378.00 |  1068472.44 |           0.00 |  1068472.44
 STL-20261001-000041 | DLV-20260930-000071 |        122.26 |     20814.00 |  2544719.64 |           0.00 |  2544719.64
 STL-20261002-000040 | DLV-20260930-000077 |        112.74 |     22046.00 |  2485466.04 |           0.00 |  2485466.04
 STL-20261001-000024 | DLV-20260930-000093 |         38.99 |     22300.00 |   869477.00 |           0.00 |   869477.00
 STL-20261001-000013 | DLV-20260930-000098 |         91.39 |     20929.00 |  1912701.31 |       15357.59 |  1897343.72
 STL-20261001-000056 | DLV-20260930-000099 |        101.75 |     21213.00 |  2158422.75 |           0.00 |  2158422.75
 STL-20261002-000038 | DLV-20260930-000104 |        240.62 |     21519.00 |  5177901.78 |       62523.81 |  5115377.97
 STL-20261001-000057 | DLV-20260930-000105 |        272.29 |     22335.00 |  6081597.15 |       30583.21 |  6051013.94
```

### Literal b)
```sql
SELECT
   T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    T1.deductions_amount AS deductions_cop,
    T1.net_amount AS net_cop
FROM 
    pay.settlements AS T1
WHERE 
    T1.delivery_id LIKE '%20260930%' 
    AND T1.status = 'pending'
ORDER BY 
    T1.net_amount DESC;

```
```
     settlement      |      delivery       | net_weight_kg | price_per_kg | gross_cop  | deductions_cop |  net_cop
---------------------+---------------------+---------------+--------------+------------+----------------+------------
 STL-20261001-000040 | DLV-20260930-000256 |        278.85 |     21857.00 | 6094824.45 |           0.00 | 6094824.45
 STL-20261001-000057 | DLV-20260930-000105 |        272.29 |     22335.00 | 6081597.15 |       30583.21 | 6051013.94
 STL-20261003-000007 | DLV-20260930-000116 |        239.84 |     22306.00 | 5349871.04 |           0.00 | 5349871.04
 STL-20261002-000004 | DLV-20260930-000010 |        265.10 |     21358.00 | 5662005.80 |      314758.77 | 5347247.03
 STL-20260930-000069 | DLV-20260930-000204 |        231.21 |     22692.00 | 5246617.32 |      232910.66 | 5013706.66
 STL-20261003-000001 | DLV-20260930-000023 |        219.26 |     22645.00 | 4965142.70 |           0.00 | 4965142.70
 STL-20261002-000042 | DLV-20260930-000152 |        212.94 |     22190.00 | 4725138.60 |       31959.75 | 4693178.85
 STL-20261003-000012 | DLV-20260930-000286 |        191.75 |     21569.00 | 4135855.75 |           0.00 | 4135855.75
 STL-20261002-000033 | DLV-20260930-000189 |        182.37 |     22064.00 | 4023811.68 |           0.00 | 4023811.68
 STL-20261001-000033 | DLV-20260930-000179 |        187.47 |     21526.00 | 4035479.22 |       56813.94 | 3978665.28
 STL-20261002-000032 | DLV-20260930-000141 |        175.61 |     22080.00 | 3877468.80 |       42072.90 | 3835395.90
 STL-20261001-000018 | DLV-20260930-000244 |        162.96 |     21836.00 | 3558394.56 |           0.00 | 3558394.56
 STL-20260930-000061 | DLV-20260930-000239 |        139.70 |     21923.00 | 3062643.10 |           0.00 | 3062643.10
 STL-20261003-000009 | DLV-20260930-000231 |        125.14 |     22697.00 | 2840302.58 |           0.00 | 2840302.58
 STL-20261001-000011 | DLV-20260930-000136 |        119.46 |     22466.00 | 2683788.36 |           0.00 | 2683788.36
 STL-20261001-000032 | DLV-20260930-000148 |        120.29 |     22037.00 | 2650830.73 |           0.00 | 2650830.73
 STL-20261002-000018 | DLV-20260930-000020 |        113.45 |     21439.00 | 2432254.55 |           0.00 | 2432254.55
 STL-20261001-000006 | DLV-20260930-000003 |        109.68 |     22083.00 | 2422063.44 |           0.00 | 2422063.44
 STL-20261002-000026 | DLV-20260930-000247 |        102.70 |     21539.00 | 2212055.30 |           0.00 | 2212055.30
 STL-20261001-000056 | DLV-20260930-000099 |        101.75 |     21213.00 | 2158422.75 |           0.00 | 2158422.75
 STL-20261001-000013 | DLV-20260930-000098 |         91.39 |     20929.00 | 1912701.31 |       15357.59 | 1897343.72
 STL-20261001-000020 | DLV-20260930-000207 |         78.25 |     21396.00 | 1674237.00 |       28165.25 | 1646071.75
 STL-20260930-000050 | DLV-20260930-000037 |         63.66 |     21964.00 | 1398228.24 |           0.00 | 1398228.24
 STL-20261001-000003 | DLV-20260930-000289 |         56.64 |     22883.00 | 1296093.12 |           0.00 | 1296093.12
 STL-20261002-000017 | DLV-20260930-000120 |         58.35 |     21382.00 | 1247639.70 |           0.00 | 1247639.70
 STL-20261001-000055 | DLV-20260930-000154 |         52.35 |     21750.00 | 1138612.50 |       19031.93 | 1119580.57
 STL-20261003-000008 | DLV-20260930-000064 |         49.98 |     21378.00 | 1068472.44 |           0.00 | 1068472.44
```

### Literal c)
```sql
SELECT
   T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    T1.deductions_amount AS deductions_cop,
    T1.net_amount AS net_cop,
    (T1.net_weight_kg * T1.price_per_kg_applied) AS check_gross_cop
FROM 
    pay.settlements AS T1
WHERE 
    T1.delivery_id LIKE '%20260930%' 
    AND (T1.deductions_amount IS NULL OR T1.deductions_amount = 0);
```
```
  settlement      |      delivery       | net_weight_kg | price_per_kg | gross_cop  | deductions_cop |  net_cop   | check_gross_cop
---------------------+---------------------+---------------+--------------+------------+----------------+------------+-----------------
 STL-20261001-000006 | DLV-20260930-000003 |        109.68 |     22083.00 | 2422063.44 |           0.00 | 2422063.44 |    2422063.4400
 STL-20261001-000060 | DLV-20260930-000005 |        251.37 |     21052.00 | 5291841.24 |           0.00 | 5291841.24 |    5291841.2400
 STL-20261003-000006 | DLV-20260930-000012 |         47.08 |     21627.00 | 1018199.16 |           0.00 | 1018199.16 |    1018199.1600
 STL-20261002-000018 | DLV-20260930-000020 |        113.45 |     21439.00 | 2432254.55 |           0.00 | 2432254.55 |    2432254.5500
 STL-20261003-000001 | DLV-20260930-000023 |        219.26 |     22645.00 | 4965142.70 |           0.00 | 4965142.70 |    4965142.7000
 STL-20261002-000006 | DLV-20260930-000025 |        173.32 |     21155.00 | 3666584.60 |           0.00 | 3666584.60 |    3666584.6000
 STL-20261002-000019 | DLV-20260930-000111 |        287.72 |     21454.00 | 6172744.88 |           0.00 | 6172744.88 |    6172744.8800
 STL-20261001-000023 | DLV-20260930-000112 |         46.76 |     22110.00 | 1033863.60 |           0.00 | 1033863.60 |    1033863.6000
 STL-20261002-000034 | DLV-20260930-000113 |        221.09 |     22358.00 | 4943130.22 |           0.00 | 4943130.22 |    4943130.2200
 STL-20261003-000007 | DLV-20260930-000116 |        239.84 |     22306.00 | 5349871.04 |           0.00 | 5349871.04 |    5349871.0400
 STL-20261002-000017 | DLV-20260930-000120 |         58.35 |     21382.00 | 1247639.70 |           0.00 | 1247639.70 |    1247639.7000
 STL-20261001-000011 | DLV-20260930-000136 |        119.46 |     22466.00 | 2683788.36 |           0.00 | 2683788.36 |    2683788.3600
 STL-20261002-000037 | DLV-20260930-000144 |        236.59 |     21768.00 | 5150091.12 |           0.00 | 5150091.12 |    5150091.1200
 STL-20261001-000032 | DLV-20260930-000148 |        120.29 |     22037.00 | 2650830.73 |           0.00 | 2650830.73 |    2650830.7300
 STL-20261002-000041 | DLV-20260930-000153 |        120.60 |     21878.00 | 2638486.80 |           0.00 | 2638486.80 |    2638486.8000
 STL-20261001-000021 | DLV-20260930-000157 |        167.03 |     22687.00 | 3789409.61 |           0.00 | 3789409.61 |    3789409.6100
 STL-20261002-000035 | DLV-20260930-000174 |        298.68 |     20658.00 | 6170131.44 |           0.00 | 6170131.44 |    6170131.4400
 STL-20261003-000010 | DLV-20260930-000182 |         41.88 |     22450.00 |  940206.00 |           0.00 |  940206.00 |     940206.0000
 STL-20261002-000033 | DLV-20260930-000189 |        182.37 |     22064.00 | 4023811.68 |           0.00 | 4023811.68 |    4023811.6800
 STL-20261003-000005 | DLV-20260930-000203 |        162.81 |     22222.00 | 3617963.82 |           0.00 | 3617963.82 |    3617963.8200
 STL-20260930-000063 | DLV-20260930-000227 |        152.06 |     21654.00 | 3292707.24 |           0.00 | 3292707.24 |    3292707.2400
 STL-20261003-000009 | DLV-20260930-000231 |        125.14 |     22697.00 | 2840302.58 |           0.00 | 2840302.58 |    2840302.5800
 STL-20261003-000004 | DLV-20260930-000232 |        134.94 |     21521.00 | 2904043.74 |           0.00 | 2904043.74 |    2904043.7400
 STL-20260930-000061 | DLV-20260930-000239 |        139.70 |     21923.00 | 3062643.10 |           0.00 | 3062643.10 |    3062643.1000
 STL-20261001-000018 | DLV-20260930-000244 |        162.96 |     21836.00 | 3558394.56 |           0.00 | 3558394.56 |    3558394.5600
 STL-20261002-000026 | DLV-20260930-000247 |        102.70 |     21539.00 | 2212055.30 |           0.00 | 2212055.30 |    2212055.3000
 STL-20261001-000008 | DLV-20260930-000249 |        238.75 |     21446.00 | 5120232.50 |           0.00 | 5120232.50 |    5120232.5000
 STL-20261001-000040 | DLV-20260930-000256 |        278.85 |     21857.00 | 6094824.45 |           0.00 | 6094824.45 |    6094824.4500
 STL-20261001-000061 | DLV-20260930-000261 |         91.80 |     23159.00 | 2125996.20 |           0.00 | 2125996.20 |    2125996.2000
 STL-20261002-000015 | DLV-20260930-000265 |         47.70 |     22555.00 | 1075873.50 |           0.00 | 1075873.50 |    1075873.5000
 STL-20261001-000051 | DLV-20260930-000267 |         85.56 |     22396.00 | 1916201.76 |           0.00 | 1916201.76 |    1916201.7600
 STL-20261003-000012 | DLV-20260930-000286 |        191.75 |     21569.00 | 4135855.75 |           0.00 | 4135855.75 |    4135855.7500
 STL-20261003-000002 | DLV-20260930-000287 |        177.57 |     21436.00 | 3806390.52 |           0.00 | 3806390.52 |    3806390.5200
 STL-20261001-000003 | DLV-20260930-000289 |         56.64 |     22883.00 | 1296093.12 |           0.00 | 1296093.12 |    1296093.1200
 STL-20261002-000036 | DLV-20260930-000291 |        187.57 |     22013.00 | 4128978.41 |           0.00 | 4128978.41 |    4128978.4100
 STL-20261001-000007 | DLV-20260930-000298 |        122.63 |     24556.00 | 3011302.28 |           0.00 | 3011302.28 |    3011302.2800
 STL-20261001-000058 | DLV-20260930-000027 |        180.33 |     22112.00 | 3987456.96 |           0.00 | 3987456.96 |    3987456.9600
 STL-20261002-000024 | DLV-20260930-000029 |        228.30 |     21942.00 | 5009358.60 |           0.00 | 5009358.60 |    5009358.6000
 STL-20260930-000050 | DLV-20260930-000037 |         63.66 |     21964.00 | 1398228.24 |           0.00 | 1398228.24 |    1398228.2400
 STL-20261002-000003 | DLV-20260930-000041 |         45.15 |     23402.00 | 1056600.30 |           0.00 | 1056600.30 |    1056600.3000
 STL-20261002-000023 | DLV-20260930-000047 |         79.23 |     21571.00 | 1709070.33 |           0.00 | 1709070.33 |    1709070.3300
 STL-20261001-000026 | DLV-20260930-000053 |         59.04 |     22451.00 | 1325507.04 |           0.00 | 1325507.04 |    1325507.0400
 STL-20261001-000049 | DLV-20260930-000060 |        161.31 |     22248.00 | 3588824.88 |           0.00 | 3588824.88 |    3588824.8800
 STL-20261003-000008 | DLV-20260930-000064 |         49.98 |     21378.00 | 1068472.44 |           0.00 | 1068472.44 |    1068472.4400
 STL-20261001-000041 | DLV-20260930-000071 |        122.26 |     20814.00 | 2544719.64 |           0.00 | 2544719.64 |    2544719.6400
 STL-20261002-000040 | DLV-20260930-000077 |        112.74 |     22046.00 | 2485466.04 |           0.00 | 2485466.04 |    2485466.0400
```

**Explicación:**
Las columnas coinciden porque `gross_amount` es una columna de tipo `GENERATED` calculada automáticamente 
por el motor de la base de datos. postgre toma los valores de `net_weight_kg` y `price_per_kg_applied` 
para calcular su resultado en el mismo instante en que se guarda la liquidación, aplicando internamente
la misma fórmula matemática que en el `SELECT`.
