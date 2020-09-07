use gt;

/*Verificando as tabelas*/
SHOW TABLES FROM gt;

/*Verificando os campos da tabela 'pais'*/
DESCRIBE pais;

/*Inserindo dados na tabela pais*/
INSERT INTO pais (nome, continente, codigo)
VALUES ('Brasil', 'América', 'BRA'),
('Índia', 'Ásia', 'IDN'),
('China', 'Ásia', 'CHI'),
('Japão', 'Ásia', 'JPN');

/*Visualizando os dados inseridos*/
SELECT * FROM gt.pais;

/*Inserindo dados na tabela estado*/
INSERT INTO estado (nome, sigla)
VALUES ('Maranhão', 'MA'),
('São Paulo', 'SP'),
('Santa Catarina', 'SC'),
('Rio de Janeiro', 'RJ');

/*Visualizando os dados inseridos*/
SELECT * FROM gt.estado;

/*Inserindo dados na tabela cidade*/
INSERT INTO cidade (nome, população)
VALUES ('Sorocaba', 700000),
('Déli', 26000000),
('Xangai', '22000000'),
('Tóquio', '38000000');

/*Visualizando os dados inseridos*/
SELECT * FROM gt.cidade;

/*Inserindo dados na tabela ponto_tur*/
INSERT INTO ponto_tur (nome, tipo)
VALUES ('Quininho de Barros', 'Instituição'),
('Parque Estadual do Jalapão', 'Atrativo'),
('Torre Eiffel', 'Atrativo'),
('Fogo de Chão', 'Serviço');

/*Visualizando os dados inseridos*/
SELECT * FROM gt.ponto_tur;

/*Alterando para atrativo o primeiro ponto turístico*/
UPDATE ponto_tur SET tipo = 'Atrativo' WHERE id = 1;
SELECT * FROM gt.ponto_tur;

/*Alterando o segundo pais (India) para corrigir o codigo para 'IND'*/
UPDATE pais SET codigo = 'IND' WHERE id = 2;
SELECT * FROM gt.pais;

/*Deletando a primeira cidade*/
DELETE FROM cidade WHERE id = 1;
SELECT * FROM gt.cidade;

