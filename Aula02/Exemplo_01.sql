CREATE DATABASE db_rhgeneration;

USE db_rhgeneration;


CREATE TABLE tb_setor(

	id BIGINT auto_increment,
    nome_setor VARCHAR(255),
    PRIMARY KEY(id)
);


CREATE TABLE tb_funcionarios(

	id BIGINT auto_increment,
    nome VARCHAR(255),
    salario DECIMAL(9,2),
    matricula INT,
    setor_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(setor_id) REFERENCES tb_setor(id)
);

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_setor;
SELECT * FROM	 tb_funcionarios INNER JOIN tb_setor ON tb_setor.id = tb_funcionarios.setor_id;

INSERT INTO tb_setor(nome_setor)VALUES("Administração");
INSERT INTO tb_setor(nome_setor)VALUES("Tecnologia");
INSERT INTO tb_setor(nome_setor)VALUES("Financeiro");

INSERT INTO tb_funcionarios(nome, salario, setor_id, matricula)VALUES("Wanesssa", 2000.00, 2, 0001);
INSERT INTO tb_funcionarios(nome, salario, setor_id, matricula)VALUES("Rodrigo", 5000.00, 1, 0002);
INSERT INTO tb_funcionarios(nome, salario, setor_id, matricula)VALUES("Gustavo", 15000.00, 3, 0003);

