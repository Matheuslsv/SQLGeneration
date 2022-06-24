CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT auto_increment,
    classe VARCHAR(255),
    forca INT,
    defesa INT,
    energia INT,
    vida INT,
    inteligencia INT,
    personagens_id BIGINT,
    

    PRIMARY KEY (id),
    FOREIGN KEY(personagens_id) REFERENCES tb_personagens(id)
);

CREATE TABLE tb_personagens(
	id BIGINT auto_increment,
	altura DECIMAL(5,1),
    raca VARCHAR(255),
    nivel INT,
    
    PRIMARY KEY (id)
    -- ,
    -- FOREIGN KEY(forca_id) REFERENCES forca(id),
    -- FOREIGN KEY(defesa_id) REFERENCES defesa(id)
);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

SELECT tb_personagens.altura, tb_personagens.raca, tb_personagens.nivel, tb_classes.classe, tb_classes.forca, tb_classes.defesa, tb_classes.energia, tb_classes.vida, tb_classes.inteligencia
FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id;

SELECT * FROM tb_classes WHERE forca >= 2000;
SELECT * FROM tb_classes WHERE defesa >= 1000 and defesa <= 2000;

SELECT * FROM tb_classes
WHERE classe LIKE 'g%';

INSERT INTO tb_personagens(altura, raca, nivel)VALUES(190.0, "Elfo", 15);
INSERT INTO tb_personagens(altura, raca, nivel)VALUES(170.0, "Humano", 5);
INSERT INTO tb_personagens(altura, raca, nivel)VALUES(140.0, "Anão", 25);
INSERT INTO tb_personagens(altura, raca, nivel)VALUES(200.0, "Ogro", 45);
INSERT INTO tb_personagens(altura, raca, nivel)VALUES(220.0, "Gigante", 30);

INSERT INTO tb_classes(classe, forca, defesa, energia, vida, inteligencia, personagens_id)VALUES("Guerreiro", 1500, 1700, 1000, 4000, 1000, 4);
INSERT INTO tb_classes(classe, forca, defesa, energia, vida, inteligencia, personagens_id)VALUES("Ladino", 2000, 1500, 1000, 1000, 1000, 3);
INSERT INTO tb_classes(classe, forca, defesa, energia, vida, inteligencia, personagens_id)VALUES("Arqueiro", 20, 15, 1000, 2500, 1000, 1);

UPDATE tb_classes SET forca = 1800 WHERE id = 3;
UPDATE tb_classes SET defesa = 1000 WHERE id = 3;
UPDATE tb_classes SET classe = "Cacador" WHERE id = 3;

DELETE FROM tb_classes WHERE id = 4;