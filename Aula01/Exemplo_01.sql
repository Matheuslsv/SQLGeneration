-- criar um banco de dados
CREATE DATABASE db_rhgeneration;

-- selecionar o db para ser usado
USE db_rhgeneration;

-- criar tabela
CREATE TABLE tb_funcionarios(

	-- o primary key pode ser definido como id BIGINT auto_increment primary key,
	id BIGINT auto_increment,
    nome VARCHAR(255),
    salario DECIMAL(9,2),
    setor VARCHAR(255),
    matricula INT,
    -- ou o primary key pode ser difinido dessa forma
    PRIMARY KEY (id)
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Wan", 10000.60, "Tecnologia", 03);

UPDATE tb_funcionarios
SET nome = "Marcelo"
WHERE id = 2;

DELETE FROM tb_funcionarios WHERE id = 3;

UPDATE tb_funcionarios
SET matricula = 03
WHERE id = 2;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

SELECT MAX(salario) AS maiorsalario FROM tb_funcionarios;