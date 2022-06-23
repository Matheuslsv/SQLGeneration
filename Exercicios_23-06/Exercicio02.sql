CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    marca VARCHAR(255),
    cor VARCHAR(255),
    preco DECIMAL(5,2),
    tipo VARCHAR(255),
    codigo INT,
    
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(marca, cor, preco, tipo, codigo)VALUES("Nike", "Preto", 200.00, "Camiseta", 1000);

INSERT INTO tb_produtos(marca, cor, preco, tipo, codigo)VALUES("Nike", "Branco", 299.00, "Tenis", 3001);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET preco = 699.99
WHERE id = 4;