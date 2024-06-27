CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tamanho VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
	nomesabor VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
	categoriaid BIGINT,
	PRIMARY KEY(id),
    FOREIGN KEY(categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tamanho)
VALUES ("Brotinho");
INSERT INTO tb_categorias(tamanho)
VALUES ("Familia");
INSERT INTO tb_categorias(tamanho)
VALUES ("Grande");
INSERT INTO tb_categorias(tamanho)
VALUES ("Gigante");
INSERT INTO tb_categorias(tamanho)
VALUES ("Maracana");

INSERT INTO tb_pizzas(nomesabor, preco, categoriaid)
VALUES ('Margherita', 39.90, 1);
INSERT INTO tb_pizzas(nomesabor, preco, categoriaid)
VALUES ('Pepperoni', 44.90, 2);
INSERT INTO tb_pizzas(nomesabor, preco, categoriaid)
VALUES ('Quatro Queijos', 50.00, 3);
INSERT INTO tb_pizzas(nomesabor, preco, categoriaid)
VALUES ('Vegetariana', 35.00, 1);
INSERT INTO tb_pizzas(nomesabor, preco, categoriaid)
VALUES ('Calabresa', 42.00, 2);
INSERT INTO tb_pizzas(nomesabor, preco, categoriaid)
VALUES ('Frango com Catupiry', 49.90, 3);
INSERT INTO tb_pizzas(nomesabor, preco, categoriaid)
VALUES ('Calzone de Presunto e Queijo', 53.00, 5);
INSERT INTO tb_pizzas(nomesabor, preco, categoriaid)
VALUES ("Bacon com Ovos", 39.90, 3);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nomesabor LIKE '%M%';

SELECT nomesabor, preco, tb_categorias.tamanho
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT nomesabor, preco, tb_categorias.tamanho
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.tamanho = 'Brotinho';
