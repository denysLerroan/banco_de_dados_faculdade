-- Objetivo: Realizar alterações no DB afim de reduzir a quantidade de tabelas (excluir a tabela coordenadas)

-- Alterar a tabela de ponto_tur, adicionando campos 'latitude' e 'longitude'.
ALTER TABLE ponto_tur
ADD coordenada POINT;
INSERT INTO ponto_tur (coordenada) VALUES (POINT(1.32569772, 2.5879817));
DESCRIBE gt.ponto_tur;

-- Alterar a tabela pais, adicionando uma nota de 0 a 10 com o nível de interesse para o turista
ALTER TABLE pais
ADD interesse ENUM('0', '1','2', '3','4', '5','6', '7','8', '9', '10');
DESCRIBE gt.pais;

-- Alterar a tabela cidade, incluindo uma lista com os três melhores restaurantes.
ALTER TABLE cidade 
ADD melhoresRestaurantes VARCHAR(300) DEFAULT '';
DESCRIBE gt.cidade;

-- Os campos da tabela coordenada foram adicionados em ponto_tur, sendo assim, não precisamos mais dessa tabela
DROP TABLE IF EXISTS coordenada;
