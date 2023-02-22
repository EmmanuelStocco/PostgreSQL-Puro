--Maior perfomace que as Views (atualizações auto)


SELECT CL.nome_cliente, PR.nome_produto, PE.qtde
FROM pedidos PE
	INNER JOIN clientes CL
    ON PE.cod_cliente = CL.cod_cliente
    INNER JOIN produtos PR
    ON PE.cod_produto = PR.cod_produto
 ORDER BY "CL".nome_cliente;
 
 --MATERIAZLIDE VIEW
 CREATE MATERIALIZED VIEW view_compras
 AS 
 SELECT CL.nome_cliente, PR.nome_produto, PE.qtde
FROM pedidos PE
	INNER JOIN clientes CL
    ON PE.cod_cliente = CL.cod_cliente
    INNER JOIN produtos PR
    ON PE.cod_produto = PR.cod_produto
 ORDER BY CL.nome_cliente
 WITH NO DATA;

SELECT * FROM view_compras;

REFRESH MATERIALIZED VIEW view_compras;

ALTER MATERIALIZED VIEW view_compras
RENAME COLUMN nome_produto TO Produto;

DROP MATERIALIZED VIEW view_compras;