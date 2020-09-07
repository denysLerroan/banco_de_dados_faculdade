/*Alteração de tabelas*/
/*Sintaxe
	ADD[COLUMN] (nome_coluna column_definition, ...)
    CHANGE[COLUMN] old_nome_coluna new_nome_coluna column_definition
    DROP[COLUMN] nome_coluna
    RENAME COLUMN old_nome_coluna TO new_nome_coluna
*/

/*Constraints*/
/*Sintaxe
	ALTER TABLE tbl_name
    ADD [CONSTRAINT [simbolo]] FOREIGN KEY
    [index_nome(fk_algo)] (index_col_nome, ...)
    REFERENCES tbl_nome(index_col_nome,...)
    [ON DELETE referencias]
    [ON UPDATE referencias]
*/

 /*Determinados países podem ter mais de um idioma, embora um seja determinado como o idioma oficial.
 Nessa relação, temos a cardinalidade de 1 para N*/
 
 -- Criando uma tabela responsável pela linguagem do pais
 CREATE TABLE IF NOT EXISTS linguagemPais(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    codigoPais INT(11),
    linguagem VARCHAR(30) NOT NULL DEFAULT '',
    oficial ENUM('Sim', 'Não') NOT NULL DEFAULT 'Não'
);

-- Criando o relacionamento entre pais e linguagemPais
ALTER TABLE linguagemPais
ADD CONSTRAINT Fk_linguagemPais
FOREIGN KEY (codigoPais) REFERENCES pais(id);

-- Visualizando o relacionamento
DESCRIBE linguagemPais;
DESCRIBE pais;

ALTER TABLE linguagemPais MODIFY codigoPais INT(11) NOT NULL;

