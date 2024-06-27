-- Criar o banco de dados
CREATE DATABASE db_generation_game_online;

-- Usar o banco de dados criado
USE db_generation_game_online;

-- Criar a tabela tb_classes com atributos adicionais
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    vida INT NOT NULL
);

-- Criar a tabela tb_personagens com atributos adicionais
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classeid BIGINT,
    FOREIGN KEY (classeid) REFERENCES tb_classes(id)
);

-- Inserir registros na tabela tb_classes
INSERT INTO tb_classes(nome, vida)
VALUES
("Bardo", 18),
("Druida", 20),
("Paladino", 35),
("Barbaro", 30),
("Feiticeiro", 20);

-- Inserir registros na tabela tb_personagens
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classeid)
VALUES
("Cleber", 1800, 2200, 2),
("Lara", 2000, 1900, 3),
("Darius", 2500, 2400, 4),
("Ariactus", 1600, 2100, 1),
("Theron", 1700, 2300, 5),
("Gwen", 2200, 2500, 2),
("Valen", 2100, 1950, 3),
("Bran", 1900, 2050, 4);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_personagens.poder_ataque, tb_classes.vida
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id; 

SELECT tb_personagens.nome, tb_personagens.poder_ataque, tb_classes.vida
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.nome = 'Druida';