CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    salario DECIMAL(9,2),
    setor VARCHAR(255),
    matricula INT,
    
    PRIMARY KEY (id)
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, idade, salario, setor, matricula)VALUES("Pedro", 28, 4000.00, "Design", 1600);

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios
SET salario = 2200.00
WHERE id = 4;