-- comando para apagar um banco ou uma tabela
-- DROP DATABASE db_quitanda;

CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    datavalidade DATE,
    preco DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT,
    PRIMARY KEY(id),
	FOREIGN KEY(categoriaid) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");

INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ('Outros');

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco >= 5.00 AND preco <= 15.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00; -- SELECIONAR INTERVALOSZ

SELECT * FROM tb_produtos WHERE categoriaid = 3;

-- CORINGA = % (BUSCA DE TEXTO)

SELECT * FROM tb_produtos WHERE nome LIKE "ra%";

SELECT * FROM tb_produtos WHERE nome LIKE "%ra";

SELECT * FROM tb_produtos WHERE nome LIKE "%ra%";

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos 
LEFT JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos 
RIGHT JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;