-- Exercise 01
-- b

SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T3.municipality_name AS municipality,
    T2.first_name AS first_name,
    T2.last_name AS last_name
FROM 
    farm.farms AS T1
INNER JOIN farm.farmers AS T2
    ON T1.farmer_id = T2.farmer_id
INNER JOIN geo.municipalities AS T3
    ON T1.municipality_code = T3.municipality_code
WHERE 
    T1.municipality_code = '54518'
ORDER BY 
    T2.last_name ASC;

/***
      farm       |    rural_district    | municipality |     first_name     |      last_name
------------------+----------------------+--------------+--------------------+---------------------
 El Jard├¡n        | El Escorial          | Pamplona     | Manuel             | Agudelo Jim├®nez
 La Selva         | Pe├▒as                | Pamplona     | Manuel             | Agudelo Jim├®nez
 El Diamante      | El Alizal            | Pamplona     | Marleny            | Agudelo Sandoval
 El Encanto       | Fontib├│n             | Pamplona     | Roc├¡o              | ├ülvarez C├írdenas
 Bellavista       | Alto Grande          | Pamplona     | Roc├¡o              | ├ülvarez C├írdenas
 La Caba├▒a        | Lengua               | Pamplona     | M├│nica             | ├ülvarez Carrillo
 Monteverde       | Lengua               | Pamplona     | M├│nica             | ├ülvarez Carrillo
 El Array├ín       | Navarro              | Pamplona     | Marleny            | ├ülvarez Correa
 El Mango         | La Legua             | Pamplona     | Alberto            | ├ülvarez Villamizar
 Monteverde       | La Legua             | Pamplona     | Myriam Yuliana     | Arango Narv├íez
 El Recuerdo      | La Legua             | Pamplona     | Anc├¡zar            | Arango Silva
 El Rosal         | Navarro              | Pamplona     | Edilma Gabriela    | Arias ├ülvarez
 Monteverde       | El Palchal           | Pamplona     | Edilma Gabriela    | Arias ├ülvarez
 Las Delicias     | Sabagua              | Pamplona     | Camilo             | Arias Mora
 La Quebrada      | Navarro              | Pamplona     | Viviana            | Arias Ram├¡rez
 La Selva         | Sabaneta Baja        | Pamplona     | Guillermo Pedro    | Arias Rodr├¡guez
 San Luis         | Sabaneta Alta        | Pamplona     | Isabella           | Barrera Cabrera
 La Siberia       | El Alizal            | Pamplona     | Mariana            | Barrera Correa
 El Brillante     | La Legua             | Pamplona     | Miguel             | Barrera Osorio
 La Floresta      | San Jos├® De Tonchala | Pamplona     | ├üngela             | Barrera Pe├▒a
 El Oasis         | El Alizal            | Pamplona     | Ramiro             | Barrera Villamizar
 Agua Bonita      | Monteadentro         | Pamplona     | Manuela            | Bastidas Medina
 Monteverde       | Alto Grande          | Pamplona     | Antonio            | Bastidas Rodr├¡guez
 Villa Rosa       | Cunuba               | Pamplona     | Fabio              | Bastidas Ruiz
 El Triunfo       | Garc├¡a               | Pamplona     | Roc├¡o              | Bastidas Su├írez
 La Argentina     | Caima                | Pamplona     | Roc├¡o              | Bastidas Su├írez
 Los Pinos        | San Francisco        | Pamplona     | Rafael H├®ctor      | Bedoya Pinz├│n
 La Reserva       | La Legua             | Pamplona     | Nelson             | Bedoya V├®lez
 Las Margaritas   | Caima                | Pamplona     | Nelson             | Bedoya V├®lez
 El Jard├¡n        | La Legua             | Pamplona     | Laura              | Benavides ├ülvarez
 La Argentina     | Lengua               | Pamplona     | Manuela Yolanda    | Benavides Delgado
 La Uni├│n         | Santa Matilde        | Pamplona     | Carolina Alejandra | Benavides Mart├¡nez
 Santa Clara      | El Rosal             | Pamplona     | Mateo              | Benavides Rangel
 El Horizonte     | El Totumo            | Pamplona     | Gustavo            | Berm├║dez Bedoya
 El Oasis         | La ÔöîPa               | Pamplona     | Iv├ín               | Berm├║dez Fl├│rez
 Villa Hermosa    | Monteadentro         | Pamplona     | Alberto            | Berm├║dez G├│mez
 La Fortuna       | San Francisco        | Pamplona     | Yesenia            | Berm├║dez Henao
 El Diamante      | Sabaneta Baja        | Pamplona     | Yesenia            | Berm├║dez Henao
 Los Naranjos     | El Rosal             | Pamplona     | ├ülvaro             | Berm├║dez Mar├¡n
 La Victoria      | Cunuba               | Pamplona     | ├ülvaro             | Berm├║dez Mar├¡n
 El Retiro        | Garc├¡a               | Pamplona     | ├ülvaro             | Berm├║dez Mar├¡n
 Las Palmas       | El Escorial          | Pamplona     | Rodrigo Guillermo  | Berm├║dez Mu├▒oz
 Santa Clara      | La Legua             | Pamplona     | Emilio             | Berm├║dez Rojas
 Miraflores       | El Rosal             | Pamplona     | M├│nica             | Betancur Arango
 El Horizonte     | San Jos├® De Tonchala | Pamplona     | Daniel             | Bonilla Duarte
 La Esperanza     | Pe├▒as                | Pamplona     | Daniel             | Bonilla Duarte
**/
