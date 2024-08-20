/*Associação de Tabelas com a Cláusula Where*/

Em SQL, há a possibilidade de fazer consultas unindo duas ou mais tabelas.
Esta operação poderá ser realizada de várias maneiras.

Há comandos específicos para trabalhar com união de tabelas, mas é possível
usar a cláusula where. Veremos:

/*Exemplo*/

a) Listar as cidades com o nome do seu estado. À
Select Cidade.Nome, Estado.Nome

From Cidade, Estado

Where Cidade.Sigla estado = Estado.Sigla estado

b) Idem ao exemplo anterior, mas apelidando as tabelas e as colunas.
Select C.Nome AS Cidade, E.Nome AS Estado

From Cidade c, Estado e |
Where c.Sigla estado = e.Sigla estado

/*---------------------------------------------------------------------------------------------*/

/*Cláusula Limit (Top em alguns BD)*/

A cláusula TOP da linguagem SQL específica que somente o primeiro conjunto
de linhas será retornado do resultado da consulta. É utilizada para limitar o número de
registros retornados por uma consulta e pode garantir certo ganho de desempenho em
algumas consultas que normalmente seriam compostas por uma quantidade muito
grande de registros.

SELECT [COLUNA(S)] FROM [TABELA] LIMIT [NUMERO DE REGISTROS]

/*Exemplos*/

a) Exibir todos os dados dos três primeiros produtos de acordo com a chave
primária.

Select * from produto limit 3

b) Exibir o nome e a data de admissão dos três últimos funcionários mais
novatos na empresa.

Select nome, dataadmissao from funcionario Order by dataadmissao

desc limit 3

c) Exibir o nome e o preço dos cinco produtos com menor preço de venda.

Select nome, precovenda from produto order by precovenda limit 5

d) Exibir o nome e o preço dos cinco produtos com maior preço de venda.

Select nome, precovenda from produto order by precovenda desc limit 5 |
