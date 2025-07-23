CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    serie VARCHAR(20),
    nota_final DECIMAL(4,2),
    turno VARCHAR(20),
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, idade, serie, nota_final, turno) 
VALUES ('Agata Silva', 14, '8º ano', 8.5, 'Manhã');
INSERT INTO tb_estudantes (nome, idade, serie, nota_final, turno) 
VALUES ('Rafael Silva', 13, '7º ano', 6.2, 'Tarde');
INSERT INTO tb_estudantes (nome, idade, serie, nota_final, turno) 
VALUES ('Amanda Ribeiro', 15, '9º ano', 9.1, 'Manhã');
INSERT INTO tb_estudantes (nome, idade, serie, nota_final, turno) 
VALUES ('Lucas Oliveira', 12, '6º ano', 7.3, 'Tarde');
INSERT INTO tb_estudantes (nome, idade, serie, nota_final, turno) 
VALUES('Isabela Salano', 15, '9º ano', 7.9, 'Manhã');
INSERT INTO tb_estudantes (nome, idade, serie, nota_final, turno) 
VALUES ('Ana Souza', 14, '8º ano', 8.5, 'Manhã');
INSERT INTO tb_estudantes (nome, idade, serie, nota_final, turno) 
VALUES('Isabela Santos', 15, '9º ano', 4, 'Manhã');
INSERT INTO tb_estudantes (nome, idade, serie, nota_final, turno) 
VALUES ('Fernanda Souza', 15, '9º ano', 9.1, 'Manhã');
INSERT INTO tb_estudantes (nome, idade, serie, nota_final, turno) 
VALUES ('Julio Almeida', 15, '9º ano', 10, 'Manhã');

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes
WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes
WHERE nota_final < 7.0;

SELECT id, nome FROM tb_estudantes;
UPDATE tb_estudantes
SET nota_final = 10
WHERE id = 1;



