CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;


CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);


CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(8,2) NOT NULL,
    carga_horaria INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Programação', 'Cursos voltados ao desenvolvimento de software'),
('Design', 'Cursos de design gráfico e UX/UI'),
('Marketing', 'Cursos de marketing digital e redes sociais'),
('Idiomas', 'Cursos de línguas estrangeiras'),
('Negócios', 'Cursos de gestão, finanças e empreendedorismo');


INSERT INTO tb_cursos (nome, descricao, preco, carga_horaria, id_categoria) VALUES
('Java para Iniciantes', 'Aprenda os fundamentos da linguagem Java', 799.90, 60, 1),
('Photoshop Essencial', 'Edição de imagens com Adobe Photoshop', 399.00, 40, 2),
('Marketing no Instagram', 'Estratégias para alavancar seu perfil', 299.90, 30, 3),
('Inglês Intermediário', 'Curso de inglês com foco em conversação', 699.00, 50, 4),
('Finanças Pessoais', 'Organize sua vida financeira de forma prática', 250.00, 20, 5),
('Java Avançado', 'Curso completo de Java com orientação a objetos', 999.00, 80, 1),
('UX Design', 'Experiência do usuário e prototipação', 650.00, 45, 2),
('Espanhol para Viagens', 'Curso básico para turistas', 550.00, 25, 4);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos
WHERE preco > 500.00;

SELECT * FROM tb_cursos
WHERE preco BETWEEN 600.00 AND 1000.00;


SELECT * FROM tb_cursos
WHERE nome LIKE '%J%';


SELECT 
    c.id_curso,
    c.nome AS nome_curso,
    c.preco,
    cat.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria;


SELECT 
    c.id_curso,
    c.nome AS nome_curso,
    c.preco,
    cat.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria
WHERE cat.nome_categoria = 'Programação';
