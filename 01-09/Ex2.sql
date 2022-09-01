CREATE DATABASE DB_Ecommerce;
USE DB_Ecommerce;

CREATE TABLE TB_Produtos (
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
cor varchar(255),
preco decimal (8,2),
primary key (id)
);

INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Mesa", 1, "Preto", 1250.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Notebook", 2, "Cinza", 8700.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Celular", 1, "Azul", 1765.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Mouse Bluetooth", 75, "Preto", 250.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Monitor", 15, "Cinza", 445.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Caixa de som JBL", 250, "Vermelho", 825.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Mochila", 500, "Verde", 350.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("PS5", 200, "Branco", 5300.00);

SELECT * FROM TB_Produtos;

SELECT * FROM TB_Produtos WHERE preco > 500;

SELECT * FROM TB_Produtos WHERE preco < 500;

UPDATE TB_Produtos SET cor = "Roxa" WHERE id = 7;

SELECT * FROM TB_Produtos;

 

