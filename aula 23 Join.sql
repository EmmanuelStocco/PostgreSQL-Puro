-- Inner Join 
-- retorna linhas quando houver correspondência em ambas as tabelas
-- ON cláusula/condição de junção
-- Nome de coluna qualificados


-- Outer Join
-- Retorna linhas mesmo quando não houver ao menos um correspondencia nas tabelas. 
-- Dividio entre Leftm Right e cross Join



SELECT pedidos.cod_pedido, produtos.nome_produto, pedidos.qtde
FROM  pedidos
INNER JOIN produtos
ON pedidos.cod_produto=produtos.cod_produto;

SELECT *
FROM  pedidos
INNER JOIN produtos
ON pedidos.cod_produto=produtos.cod_produto;


SELECT PE.cod_pedido, nome_produto, PE.qtde
FROM pedidos PE
INNER JOIN produtos PR
ON PE.cod_produto=PR.cod_produto