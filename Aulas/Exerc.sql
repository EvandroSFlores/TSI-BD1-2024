CREATE DATABASE clube;
USE clube;

CREATE TABLE socio (
codigo INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(60) NOT NULL,
endereco VARCHAR(50),
cidade VARCHAR(30) DEFAULT "Birigui",
estado CHAR(2) DEFAULT "SP",
cep VARCHAR(9),
fone VARCHAR(13),
data DATETIME NOT NULL,
PRIMARY KEY(codigo)
);

CREATE TABLE dependente (
codigo_socio INT NOT NULL,
sequencial INT NOT NULL,
nome VARCHAR(60) NOT NULL,
parentesco VARCHAR(15),
data_nasc DATETIME,
PRIMARY KEY(codigo_socio),
FOREIGN KEY (codigo_socio) REFERENCES socio (codigo)
);

INSERT INTO socio (nome, endereco, cidade, estado, cep, fone, data)
VALUES ('Evandro', 'Rua das Acacias', 'Belo Horizonte', 'MG', 16205420, 2099754782, '1999/05/12');
INSERT INTO socio (nome, endereco, cidade, estado, cep, fone, data)
VALUES ('Bruno', 'Rua Santo', 'Salvador', 'BA', 16205652, 2255897842, '2009/06/18');
INSERT INTO socio (nome, endereco, cidade, estado, cep, fone, data)
VALUES ('Leonardo', 'Rua Antunes', 'Londrina', 'Parana', 16265894, 17992574862, '1996/10/10');

INSERT INTO dependente(codigo_socio, sequencial, nome, parentesco, data_nasc) VALUES (1, 2, "Evandro", "Bolsonaro" ,'2022-02-22'); 
INSERT INTO dependente(codigo_socio, sequencial, nome, parentesco, data_nasc) VALUES (3, 4, "Leonardo", "Lula" ,'2013-03-13');

SELECT * FROM socio;
SELECT * FROM dependente;

UPDATE socio SET
    nome = "Pedro"
WHERE codigo = 3;

SELECT * FROM socio;