CREATE DATABASE db_rh_empresa;
USE db_rh_empresa;

CREATE TABLE tb_colaboradores (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_admissao DATE,
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    departamento VARCHAR(50),
    PRIMARY KEY (id) 
);

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao, departamento) 
VALUES ('Ana Oliveira', 'Analista de RH', 2500.00, '2022-03-01', 'Recursos Humanos');
INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao, departamento)
VALUES ('Carlos Lima', 'Assistente Administrativo', 1800.00, '2023-01-15', 'Administrativo');
INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao, departamento)
VALUES ('Fernanda Souza', 'Gerente Financeiro', 4500.00, '2020-06-10', 'Financeiro');
INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao, departamento)
VALUES ('Lucas Martins', 'Estagiário de TI', 1200.00, '2024-02-01', 'Tecnologia');
INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao, departamento)
VALUES ('Mariana Dias', 'Desenvolvedora Back-End', 3200.00, '2021-11-25', 'Tecnologia');
INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao, departamento)
VALUES ('Amanda Silva', 'Recepcionista', 1900.00, '2025-02-14','Administrativo');

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores
WHERE salario > 2000;

SELECT * FROM tb_colaboradores
WHERE salario < 2000;

UPDATE tb_colaboradores
SET salario = 2200.00
WHERE id = 2;


