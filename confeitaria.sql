CREATE DATABASE db_confeitaria;
USE db_confeitaria;

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT ,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria VARCHAR(50),
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ('Bolo de Chocolate', 'Bolo tradicional com cobertura de brigadeiro', 65.00, 10, 'Bolos');
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES('Bolo de Pote', 'Bolo em camadas com recheio de leite ninho e morango', 12.00, 30, 'Sobremesas');
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES('Copo da Felicidade', 'Sobremesa em camadas com brigadeiro, morango e chantilly', 15.00, 25, 'Sobremesas');
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES('Morango do Amor', 'Morango coberto com calda de açúcar cristalizado', 5.00, 40, 'Doces');
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES('Bala Baiana', 'Doce frito com coco e cobertura crocante de açúcar', 3.50, 60, 'Doces');
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES('Brigadeirão', 'Brigadeiro grande em formato de pudim', 28.00, 8, 'Doces');
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES('Morango com Chocolate', 'Morangos frescos cobertos com chocolate ao leite', 7.00, 35, 'Doces');
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES('Beijinho', 'Doce de coco com leite condensado e açúcar cristal', 2.50, 100, 'Doces');

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos
WHERE preco < 500;

SELECT * FROM tb_produtos
WHERE preco > 500;

UPDATE tb_produtos
SET preco = 16.00
WHERE id = 3; 
