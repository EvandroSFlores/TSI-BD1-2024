

CREATE DATABASE Mercado_Evandro
DEFAULT CHARSET = utf8
DEFAULT COLLATE = utf8_general_ci;

USE Mercado_Evandro

CREATE TABLE fornecedor(
    codigo_fornec INT AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    fone VARCHAR(20),
    endereco VARCHAR(40),
    cidade VARCHAR(30) DEFAULT "Birigui",
    estado  VARCHAR(2) DEFAULT "SP",
    PRIMARY KEY (codigo_fornec)
);

CREATE TABLE produto(
    cod_produto INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(40) NOT NULL,
    codigo_fornec INT NOT NULL,
    preco_unitario DECIMAL(10,2),
    qtde INT,
    PRIMARY KEY (cod_produto),
    CONSTRAINT FK_produto_fornecedor
    FOREIGN KEY (codigo_fornec) 
    REFERENCES fornecedor (codigo_fornec)
);

INSERT INTO fornecedor (codigo_fornec, nome, fone, endereco, cidade, estado)
VALUES (344, 'Alimentos do Bem', '3345666', 'Rua Fundadores', 'Sao Paulo', 'SP');

INSERT INTO fornecedor (codigo_fornec, nome, fone, endereco, cidade, estado)
VALUES (78, 'comidas', '8664545', 'Av dos Estados', 'Aracatuba', 'SP');

INSERT INTO fornecedor (codigo_fornec, nome, fone, endereco)
VALUES (952, 'Rango Quente', '1327790', 'Rua Aclimacao');

INSERT INTO fornecedor (codigo_fornec, nome, fone, endereco, cidade, estado)
VALUES (111, 'Quentinhas', '5644234', 'Rua Teste', 'Belo Horizonte', 'MG');

SELECT * FROM fornecedor;


INSERT INTO produto (cod_produto, nome, codigo_fornec, preco_unitario, qtde)
VALUES (1, 'arroz', 344, 20, 55);

INSERT INTO produto (cod_produto, nome, codigo_fornec, preco_unitario, qtde)
VALUES (2, 'feijao', 78, 16.5, 60);

INSERT INTO produto (cod_produto, nome, codigo_fornec, preco_unitario, qtde)
VALUES (3, 'macarrao', 78, 5, 15);

INSERT INTO produto (cod_produto, nome, codigo_fornec, preco_unitario, qtde)
VALUES (4, 'leite', 344, 3.5, 20);

INSERT INTO produto (cod_produto, nome, codigo_fornec, preco_unitario, qtde)
VALUES (5, 'farinha', 952, 5, 8);

SELECT * FROM produto;


UPDATE fornecedor SET
    nome = 'comidas'
WHERE codigo_fornec = 78;

ALTER TABLE fornecedor ADD email VARCHAR(30);

UPDATE fornecedor SET
    email = 'alimentosdobem@gmail.com'
WHERE codigo_fornec = 344;

UPDATE fornecedor SET
    email = 'quentinhas@hotmail.com'
WHERE codigo_fornec = 111;

ALTER TABLE fornecedor DROP endereco;

UPDATE produto SET
    qtde = 15
WHERE codigo_fornec = 1;


SELECT * FROM fornecedor;

SELECT nome FROM produto WHERE preco_unitario > 15;

SELECT nome, codigo_fornec FROM fornecedor WHERE estado = 'SP';

SELECT nome, (preco_unitario*qtde) AS TOTAL FROM produto;

SELECT cod_produto FROM produto WHERE codigo_fornec = 78;

UPDATE produto SET
    nome = 'leite desnatado'
WHERE cod_produto = 4;

UPDATE produto SET qtde = qtde-1;

ALTER TABLE fornecedor ADD pais VARCHAR(30);

UPDATE fornecedor SET pais = 'Brasil';

INSERT INTO fornecedor (codigo_fornec, nome, fone, cidade, estado, pais)
VALUES (157, 'Foods', '9995556', 'Berlim', 'UK', 'England');

DELETE FROM fornecedor WHERE estado != 'SP' AND pais = 'Brasil';

SELECT * FROM fornecedor;

