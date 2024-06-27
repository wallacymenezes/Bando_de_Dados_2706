CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    categoriaid BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(descricao)
VALUES
("Medicamentos"),
("Cosméticos"),
("Higiene"),
("Infantil"),
("Fitness");

INSERT INTO tb_produtos(nome, preco, categoriaid)
VALUES
('Paracetamol', 15.00, 1),
('Shampoo Anticaspa', 25.00, 2),
('Creme Dental', 8.50, 3),
('Fralda Descartável', 45.00, 4),
('Whey Protein', 80.00, 5),
('Sabonete Líquido', 12.00, 3),
('Protetor Solar', 55.00, 2),
('Vitamina C', 30.00, 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT nome, preco, tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;
 
SELECT nome, preco, tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.descricao = "Medicamentos";


