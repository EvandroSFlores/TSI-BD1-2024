DROP DATABASE IF EXISTS IFSP; 

CREATE DATABASE IFSP
DEFAULT CHARSET = utf8
DEFAULT COLLATE = utf8_general_ci;

USE IFSP;

CREATE TABLE cidade (
    id INT AUTO_INCREMENT,
    nome VARCHAR (100) NOT NULL,
    estado VARCHAR (002) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE cliente (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    id_cidade INT,
    endereco VARCHAR(100),
    numero INT,
    bairro VARCHAR(100),
    data_nasc DATETIME,
    PRIMARY KEY(id),
    CONSTRAINT fk_cliente_cidade
    FOREIGN KEY (id_cidade) REFERENCES cidade (id)
);


INSERT INTO cidade (id, nome, estado) VALUES (1, 'Birigui', 'SP');
INSERT INTO cidade (id, nome, estado) VALUES (100, 'Aracatuba', 'SP');
INSERT INTO cidade (nome, estado) VALUES ('Guararapes', 'SP');
INSERT INTO cidade (nome) VALUES ('Rio de Janeiro');

SELECT * FROM cidade;


INSERT INTO cliente (nome, email, id_cidade, endereco, numero, bairro, data_nasc)
VALUES ('Evandro', 'evandro@gmail.com', 100, 'Rua das Acacias', 160, 'Cidade Jardim', '2000/04/04');

SELECT * FROM cliente;


UPDATE nome_tabela SET
    nome_col1 = val_col1,
    .....
    nome_coln = val_coln
WHERE condicoes

Exemplo:
