-- Exercise 01
-- a
SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date,
    (CURRENT_DATE - T1.membership_date) AS membership_days
FROM 
    farm.farmers AS T1
WHERE 
    T1.municipality_code = '54518'
ORDER BY 
    membership_days DESC;

/***
  document  |    first_name     |     last_name      | membership_date | membership_days
------------+-------------------+--------------------+-----------------+-----------------
 402745033  | Julißn Guillermo  | Valencia Narvßez   | 1995-01-27      |           11604
 361839624  | RocÝo Alba        | Ortega Serrano     | 1995-07-10      |           11440
 546579335  | Wilson            | Parra Prada        | 1995-07-28      |           11422
 939635303  | Marleny           | ┴lvarez Correa     | 1996-03-20      |           11186
 748380481  | Teresa Adriana    | Valencia Moreno    | 1996-07-23      |           11061
 1012324420 | Martha Carolina   | PÚrez Jaimes       | 1996-11-22      |           10939
 230971064  | Manuel            | Agudelo JimÚnez    | 1997-03-29      |           10812
 483692716  | Ramiro            | Barrera Villamizar | 1997-04-08      |           10802
 677772599  | Guillermo         | PÚrez PÚrez        | 1997-05-17      |           10763
 59388780   | Juan              | Ortega Zapata      | 1997-07-13      |           10706
 789425487  | EfraÝn Ricardo    | Contreras Ospina   | 1997-07-21      |           10698
 172555225  | Edilma Gabriela   | Arias ┴lvarez      | 1998-03-24      |           10452
 659942505  | Mariana           | Barrera Correa     | 1998-03-27      |           10449
 914235490  | Ëscar             | Ospina Gonzßlez    | 1998-05-02      |           10413
 963176673  | Luis              | Mosquera Perdomo   | 1998-07-29      |           10325
 142439635  | Yeison            | Medina Londo±o     | 1998-09-29      |           10263
 534023693  | Myriam            | Valencia Moreno    | 1998-11-03      |           10228
 446019320  | Fernando          | Rojas Cßrdenas     | 1998-12-16      |           10185
 33787285   | RubÚn             | Ramos Chamorro     | 1999-03-02      |           10109
 866702579  | ┴lvaro            | Berm·dez MarÝn     | 1999-06-21      |            9998
 155695928  | Martha            | Giraldo Arango     | 1999-09-14      |            9913
 1138270357 | Gustavo Heriberto | Torres Guerrero    | 1999-12-30      |            9806
 14046794   | Alberto           | ┴lvarez Villamizar | 2000-04-14      |            9700
 1185360305 | Ivßn              | Berm·dez Fl¾rez    | 2000-09-03      |            9558
 1145130870 | Elsa              | MarÝn Henao        | 2001-03-17      |            9363
 622024549  | Viviana           | Gonzßlez Molina    | 2001-04-18      |            9331
 824422301  | Hernando          | Montoya Agudelo    | 2001-07-22      |            9236
**/