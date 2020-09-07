CREATE DATABASE rh;
USE rh;

/*Criando as tabelas*/
CREATE TABLE funcionarios (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
email VARCHAR (50),
id_cargo INT(4)
);

CREATE TABLE cargo(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50)
);

/*Adcionando os relacionamentos*/
ALTER TABLE funcionarios
ADD CONSTRAINT fk_id_cargo
FOREIGN KEY (id_cargo)
REFERENCES cargo(id);

/*Inserindo os dados*/
INSERT INTO cargo (nome)
VALUES
('Front End Developer'),
('Back End Developer'),
('Fullstack Developer');

INSERT INTO funcionarios (nome, email, id_cargo)
VALUES
("Denys","lerroandeco@gmail.com", 1),
("Flavio","flavio@gmail.com", 1),
("Maria","maria@gmail.com", 1),
("Leo","leo@gmail.com", 1),
("Tarso","tarso@gmail.com", 3),
("Lele","lele@gmail.com", 2),
("Mano","mano@gmail.com", 3);

/*Consulta todos os registros na tabela funcionarios*/
SELECT * FROM funcionarios;

/*Consulta todos os registros na tabela cargo*/
SELECT * FROM cargo;


/*Consulta somente os empregados registrados com o cargo de Front End Developer*/
SELECT * FROM funcionarios
WHERE id_cargo = '1'; 


