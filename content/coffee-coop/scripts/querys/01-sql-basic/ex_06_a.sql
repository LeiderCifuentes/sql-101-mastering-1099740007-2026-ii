-- Exercise 06
-- a
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

/***
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
**/