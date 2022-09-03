CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tamanho varchar(255),
primary key (id)
);

INSERT INTO tb_categorias (tamanho)
values ("Brotinho");
INSERT INTO tb_categorias (tamanho)
values ("Normal");
INSERT INTO tb_categorias (tamanho)
values ("Média");
INSERT INTO tb_categorias (tamanho)
values ("Grande");
INSERT INTO tb_categorias (tamanho)
values ("Gigante");

CREATE TABLE tb_pizzas(
id bigint auto_increment,
sabor varchar(255) not null,
preco decimal (7,2),
borda varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

iNSERT INTO tb_pizzas (sabor, preco, borda, categoria_id)
values ("4 queijos", 44.35, "com borda recheada", 2);
iNSERT INTO tb_pizzas (sabor, preco, borda, categoria_id)
values ("Mussarela", 32.50, "com borda recheada", 1);
iNSERT INTO tb_pizzas (sabor, preco, borda, categoria_id)
values ("Portuguesa", 47.90, "sem borda recheada", 3);
iNSERT INTO tb_pizzas (sabor, preco, borda, categoria_id)
values ("Gratinada", 46.35, "com borda recheada", 2);
iNSERT INTO tb_pizzas (sabor, preco, borda, categoria_id)
values ("Toscana", 51.90, "com borda recheada", 4);
iNSERT INTO tb_pizzas (sabor, preco, borda, categoria_id)
values ("Calabreza", 45.35, "com borda recheada", 3);
iNSERT INTO tb_pizzas (sabor, preco, borda, categoria_id)
values ("Forneiro", 49.35, "sem borda recheada", 4);
iNSERT INTO tb_pizzas (sabor, preco, borda, categoria_id)
values ("Napolitana", 56.90, "com borda recheada", 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 45.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT sabor, preco, borda, tb_categorias.tamanho
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;



