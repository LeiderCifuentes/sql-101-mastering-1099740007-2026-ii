-- Exercise 02
-- a
SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM 
    farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code = '54518';

/***
 document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 1061690671 | Guillermo Pedro   | Arias RodrÝguez    | La Selva
 712758473  | Wilson            | L¾pez Villamizar   | El Silencio
 134410171  | Orlando           | Salazar Berm·dez   | El Diamante
 870240973  | Jairo             | Molina Pab¾n       | El Recuerdo
 727945493  | Gloria            | MarÝn Rivera       | La Esperanza
 549054771  | MarÝa             | Burbano Duarte     | El Nogal
 549054771  | MarÝa             | Burbano Duarte     | La Divisa
 622105662  | Alejandra         | Molina Torres      | La Carolina
 622105662  | Alejandra         | Molina Torres      | La Cristalina
 622105662  | Alejandra         | Molina Torres      | Villa Rosa
 437443011  | Julißn            | Pe±a Betancur      | Los Arrayanes
 356207226  | Luisa             | Caicedo Restrepo   | El Brillante
 356207226  | Luisa             | Caicedo Restrepo   | La Cascada
 578947645  | Mario             | Uribe CuÚllar      | El Porvenir
 578947645  | Mario             | Uribe CuÚllar      | La Primavera
 24999630   | Esperanza         | Romero Betancur    | El Oasis
 24999630   | Esperanza         | Romero Betancur    | La Florida
 914044314  | AncÝzar Cristian  | PolanÝa Delgado    | Los Arrayanes
 358946393  | Carmen            | Cßrdenas Moreno    | El Horizonte
 358946393  | Carmen            | Cßrdenas Moreno    | El Porvenir
 358946393  | Carmen            | Cßrdenas Moreno    | La Esperanza
 358946393  | Carmen            | Cßrdenas Moreno    | La Primavera
 811782754  | Nicolßs           | Gonzßlez RodrÝguez | El Guayabo
 463842401  | RocÝo             | ┴lvarez Cßrdenas   | Bellavista
 463842401  | RocÝo             | ┴lvarez Cßrdenas   | El Encanto
 463842401  | RocÝo             | ┴lvarez Cßrdenas   | La Cumbre
 343256743  | Dora              | Hernßndez Correa   | Cafetal Viejo
**/