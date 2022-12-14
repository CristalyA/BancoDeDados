CREATE DATABASE DB_LISTA_PRODUTOS;
USE DB_LISTA_PRODUTOS;

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
CLASSIFICACAO CHAR(200),
NOME CHAR(100),
VALOR INT,
QUANTIDADE INT,
FRETE CHAR(200),
PRIMARY KEY (ID)
);

INSERT INTO TB_PRODUTOS (CLASSIFICACAO,NOME,VALOR,QUANTIDADE,FRETE)
VALUE ("CELULAR","IPHONE 11",4500,1,"RETIRADA");

INSERT INTO TB_PRODUTOS (CLASSIFICACAO,NOME,VALOR,QUANTIDADE,FRETE)
VALUE ("RELOGIO","APPLE WATCH 4",2000,1,"ENTREGA");

INSERT INTO TB_PRODUTOS (CLASSIFICACAO,NOME,VALOR,QUANTIDADE,FRETE)
VALUE ("CELULAR","IPHONE 12",4100,1,"RETIRADA");

INSERT INTO TB_PRODUTOS (CLASSIFICACAO,NOME,VALOR,QUANTIDADE,FRETE)
VALUE ("CELULAR","IPHONE 13",5200,1,"RETIRADA");

INSERT INTO TB_PRODUTOS (CLASSIFICACAO,NOME,VALOR,QUANTIDADE,FRETE)
VALUE ("CELULAR","IPHONE 13 MINI",4800,1,"ENTREGA");

INSERT INTO TB_PRODUTOS (CLASSIFICACAO,NOME,VALOR,QUANTIDADE,FRETE)
VALUE ("RELOGIO","APPLE WATCH 5",2500,1,"ENTREGA");

INSERT INTO TB_PRODUTOS (CLASSIFICACAO,NOME,VALOR,QUANTIDADE,FRETE)
VALUE ("RELOGIO","APPLE WATCH 5",2500,1,"RETIRADA");

INSERT INTO TB_PRODUTOS (CLASSIFICACAO,NOME,VALOR,QUANTIDADE,FRETE)
VALUE ("FONE"," AIR PODS PRO",999,1,"ENTREGA");

INSERT  INTO TB_PRODUTOS (CLASSIFICACAO,NOME,VALOR,QUANTIDADE,FRETE)
VALUE ("CAPINHA","CAPA IPHONE 11",90,1,"RETIRADA");

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE VALOR > 500; 

SELECT * FROM TB_PRODUTOS WHERE VALOR < 500;

SET SQL_SAFE_UPDATES = 0;

UPDATE TB_PRODUTOS SET VALOR = 5000 WHERE ID = 4;
UPDATE TB_PRODUTOS SET VALOR = 4050 WHERE ID = 4;

