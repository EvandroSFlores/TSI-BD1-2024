/*
SQL (Structured Query Language)
 Linguagem de Consulta Estruturada
 Foi desenvolvida no início dos anos 1970, no departamento de
pesquisas da IBM
 Essa linguagem acabou se tornando padrão de banco de dados
relacional
 Usado em inúmeros BD, como MySQL, SQLServer, Oracle, Sybase,
Access, PostgreSQL, etc
 O SQL embora padronizado, possui muitas variações e extensões
produzidos pelos diferentes fabricantes de sistemas gerenciadores de
bases de dados
 Cada BD pode usar um “dialeto” do SQL com T_SQL(SQLServer),
PL/SQL(Oracle), JetSQL(Access), etc.
Funções do SQL
 Permite acesso a dados em SGBD;
 Permite definir os dados no BD e manipulá-los;
 Pode ser embutido em outras linguagens usando módulos SQL,
bibliotecas, etc;
 Permite criar e excluir BD e tabelas;
 Permite a criação de visões (exibições), Stored Procedures e Funções
em um BD;
 Permite configurar permissões de acesso em tabelas, procedimentos e
visões.
*/

/*
Categorias da SQL
⚫ Os comandos SQL podem ser divididos em 4 grupos principais:
1. DDL (Data Definition Language) - Linguagem de Definição de
Dados
⚫ Permite a criação e alteração de objetos do banco de dados. Apesar
de baseado na SQL padrão, geralmente existem extensões para cada
SGDB utilizado. Os comandos clássicos são:
CREATE - cria um objeto (uma tabela, por exemplo) dentro do banco de
dados (ou o próprio);
DROP - apaga um objeto do banco de dados;
ALTER - modifica um objeto existente no BD, como uma tabela.
Categorias da SQL
2. DML (Data Manipulation Language) - Linguagem de
Manipulação de Dados
⚫ Permite a alteração dos dados dentro das tabelas. Os mais comuns
são:
INSERT (INSERIR) – cria um registro (linha)
UPDATE (ATUALIZAR) – modifica valores de um registro
DELETE (EXCLUIR) - exclui de um registro
Categorias da SQL
3. DCL (Data Control Language) – Linguagem de Controle
de Dados
 parte da linguagem para definir usuários e controlar
seus acessos aos dados.
GRANT – dá privilégios (permissões) a um usuário
REVOKE – retira privilégios fornecidos a um usuário.
Categorias da SQL
4. DQL (Data Query Language) - Linguagem de Consulta de
Dados
⚫ para seleção de dados em um ou mais registros
SELECT (SELECIONAR) – obtém registros específicos de uma ou mais
tabelas. (consulta)
*/

/*
CREATE DATABASE
CREATE TABLE
DROP DATABASE
DROP TABLE
ALTER TABLE
Ex: ALTER TABLE funcionario ADD sexo CHAR(1)
ou: ALTER TABLE funcionario MODIFY nome VARCHGAR(60)
*/