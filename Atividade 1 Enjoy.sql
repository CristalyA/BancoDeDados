CREATE DATABASE DB_GENERATION_GAME_ONLINE_A;
USE DB_GENERATION_GAME_ONLINE_A;

CREATE TABLE TB_CLASSES (
ID BIGINT AUTO_INCREMENT,
CATEGORIA  VARCHAR (255),
RACA VARCHAR (255),
PRIMARY KEY (ID));

CREATE TABLE TB_PERSONAGENS(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR (100),
PODER CHAR (150),
ATAQUE INT,
DEFESA INT,
PRIMARY KEY (ID),
CLASSES_ID BIGINT,
FOREIGN KEY (CLASSES_ID) REFERENCES TB_CLASSES (ID)
);

INSERT INTO  TB_CLASSES (CATEGORIA,RACA)
VALUE ("HEROI", "ELFO");

INSERT INTO TB_CLASSES (CATEGORIA,RACA)
VALUE ("HEROI","MINOTAURO");

INSERT INTO TB_CLASSES (CATEGORIA,RACA)
VALUE ("HEROI","GNOMO");

INSERT INTO TB_CLASSES (CATEGORIA,RACA)
VALUE ("VILAO","ELFO");

INSERT INTO TB_CLASSES (CATEGORIA,RACA)
VALUE ("VILAO","MINOTAURO");

INSERT INTO TB_CLASSES (CATEGORIA,RACA)
VALUE ("VILAO","GNOMO");

SELECT * FROM TB_CLASSES;

DELETE FROM TB_CLASSES WHERE ID = 6;

INSERT INTO TB_PERSONAGENS (NOME,PODER,ATAQUE,DEFESA,CLASSES_ID)
VALUE ("CRIX","FORÇA",5000,7000,5);

INSERT INTO TB_PERSONAGENS (NOME,PODER,ATAQUE,DEFESA,CLASSES_ID)
VALUE ("STE","ENCATAMENTO",8000,7000,1);

INSERT INTO TB_PERSONAGENS (NOME,PODER,ATAQUE,DEFESA,CLASSES_ID)
VALUE ("SCAR","MIRA",9000,8000,3);

INSERT  INTO TB_PERSONAGENS (NOME,PODER,ATAQUE,DEFESA,CLASSES_ID)
VALUE ("MARI","FORÇA",9000,9000,2);

INSERT INTO TB_PERSONAGENS (NOME,PODER,ATAQUE,DEFESA,CLASSES_ID)
VALUE ("MAY","ENCANTAMENTO",9000,8000,3);

INSERT INTO TB_PERSONAGENS (NOME,PODER,ATAQUE,DEFESA,CLASSES_ID)
VALUE ("ANDSO","MIRA",5000,9000,2);

INSERT INTO TB_PERSONAGENS(NOME,PODER,ATAQUE,DEFESA,CLASSES_ID)
VALUE ("RAFA","INFORMAÇÃO",3000,5000,7);

INSERT INTO TB_PERSONAGENS(NOME,PODER,ATAQUE,DEFESA,CLASSES_ID)
VALUE ("MAT","FORÇA",9000,10000,1);

SELECT * FROM TB_PERSONAGENS;

SELECT * FROM TB_PERSONAGENS WHERE ATAQUE > 2000;

SELECT *FROM TB_PERSONAGENS WHERE DEFESA > 1000 AND DEFESA < 2000;

SELECT * FROM TB_PERSONAGENS WHERE NOME LIKE "%C%" ;

SELECT * FROM TB_PERSONAGENS INNER JOIN TB_CLASSES ON TB_PERSONAGENS.CLASSES_ID = TB_CLASSES.ID;

SELECT NOME,PODER = "MIRA"  FROM TB_PERSONAGENS INNER JOIN TB_CLASSES ON TB_PERSONAGENS.CLASSES_ID = TB_CLASSES.ID;
