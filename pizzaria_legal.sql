-- 1. Criação do Banco de Dados
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;


CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);


CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(20),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Tradicional', 'Pizzas clássicas com sabores tradicionais'),
('Especial', 'Sabores especiais e diferenciados'),
('Doce', 'Pizzas doces com coberturas variadas'),
('Vegetariana', 'Pizzas sem carne, com vegetais'),
('Premium', 'Ingredientes premium e combinações gourmet');


INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) VALUES
('Margherita', 'Molho, muçarela, tomate e manjericão', 42.90, 'Média', 1),
('Pepperoni', 'Molho, muçarela e pepperoni', 48.50, 'Grande', 1),
('Chocolate com Morango', 'Chocolate ao leite com morango', 55.00, 'Média', 3),
('Quatro Queijos', 'Muçarela, parmesão, gorgonzola e catupiry', 50.00, 'Grande', 2),
('Vegetariana Premium', 'Legumes, muçarela e molho especial', 60.00, 'Grande', 4),
('Romeu e Julieta', 'Goiabada e queijo', 46.00, 'Média', 3),
('Frango com Catupiry', 'Frango desfiado e catupiry', 47.00, 'Grande', 2),
('Trufada Gourmet', 'Chocolate trufado com morango e leite ninho', 65.00, 'Média', 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas
WHERE preco > 45.00;


SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas
WHERE nome LIKE '%M%';


SELECT 
    p.id_pizza, 
    p.nome AS nome_pizza, 
    p.preco, 
    c.nome_categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;


SELECT 
    p.id_pizza, 
    p.nome AS nome_pizza, 
    p.preco, 
    c.nome_categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';
