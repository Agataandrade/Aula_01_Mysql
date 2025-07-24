
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);


CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(6,2) NOT NULL,
    estoque INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Produtos usados no tratamento de doenças'),
('Higiene', 'Produtos de higiene pessoal'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele'),
('Vitaminas', 'Suplementos vitamínicos e minerais'),
('Infantil', 'Produtos voltados para o cuidado infantil');


INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES
('Dipirona', 'Analgésico e antitérmico', 12.50, 100, 1),
('Shampoo Anticaspa', 'Shampoo para tratamento do couro cabeludo', 35.90, 50, 2),
('Protetor Solar FPS 50', 'Protetor solar resistente à água', 67.00, 30, 3),
('Vitamina C 1g', 'Suplemento vitamínico efervescente', 18.00, 70, 4),
('Pomada para Assaduras', 'Produto para prevenir assaduras em bebês', 22.90, 60, 5),
('Base Líquida', 'Maquiagem para uniformizar o tom da pele', 54.90, 40, 3),
('Ibuprofeno', 'Anti-inflamatório e analgésico', 16.80, 80, 1),
('Colônia Infantil', 'Perfume suave para bebês e crianças', 42.00, 25, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos
WHERE preco > 50.00;


SELECT * FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

SELECT 
    p.id_produto,
    p.nome AS nome_produto,
    p.preco,
    c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;


SELECT 
    p.id_produto,
    p.nome AS nome_produto,
    p.preco,
    c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';
