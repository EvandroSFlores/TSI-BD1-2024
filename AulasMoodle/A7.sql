/*Junções

Baptista (2011) afirma que JOIN é uma cláusula que permite a associação
entre várias tabelas, com base na relação existente entre elas. Dessa maneira, os
dados de uma tabela são utilizados para selecionar dados pertencentes à outra tabela.

Com a cláusula JOIN são especificadas as colunas das tabelas que serão
associadas. Para este tipo de associação é necessário utilizar as chaves estrangeiras
para referencias as tabelas que serão associadas.

Há três tipos de associações de tabelas com a cláusula Join: associação
interna (Inner Join), associação cruzada (Cross Join) e associação externa (Outer
Join).
*/

/*
Sintaxe

FROM <nome-primeira-tabela> <tipo-join> <nome-segunda-tabela>

[ON <condição>]

Em que:

Nome-primeira-tabela: representa a primeira tabela que será associada.

Tipo-join: permite identificar uma das seguintes associações: Inner Join, Cross
Join e Outer Join.

Nome-segunda-tabela: representa a segunda tabela que será associada.

Condição: define um critério para avaliação de duas linhas de dados que já
estão associadas.
*/

/*Associação interna (inner join)*/

Compara os valores de colunas provenientes de tabelas associadas. Por meio
desta cláusula os registros de duas tabelas são utilizados para que sejam gerados os
dados relacionados de ambas.

Quando relacionamos duas tabelas, é preciso informar qual campo permite
essa ligação.

Normalmente, o campo que relaciona duas tabelas possui o mesmo nome nas
duas tabelas (quando o banco de dados esta normalizado corretamente), porém isto
não é uma condição necessária para que o Join funcione.

O INNER JOIN conecta as duas ou mais tabelas, e retorna apenas as linhas
que satisfazem a condição de junção. Este tipo de associação funciona da mesma
forma que as associações com uso da cláusula WHERE.