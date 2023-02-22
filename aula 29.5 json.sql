CREATE TABLE peds (
 	id serial NOT NULL PRIMARY KEY,
  	pedido json NOT NULL
 );
 
 INSERT INTO peds (pedido)
 VALUES 
 ('{"comprador":"Emmanuel", "produtos":{"bebida":"Suco de Caju", "comida": "Pizza de Atum"}}')

SELECT * FROM peds;


SELECT pedido -> 'comprador' AS COMPRADOR
FROM peds;

SELECT pedido -> 'produtos' ->> 'bebida' AS "Bebidas Vendidas"
FROM peds


--SELECIONAR quem comprou Coca por exemplo:
SELECT pedido ->> 'comprador' AS Comprador
FROM peds
WHERE pedido -> 'produtos' ->> 'bebida' = 'Suco de Caju';

--JSON FUNC
SELECT json_each(pedido)
FROM peds;

SELECT json_each_text(pedido)
FROM peds;

SELECT json_object_keys(pedido->'produtos')
FROM peds;