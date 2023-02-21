SELECT CL.nome_cliente AS CLiente, PR.nome_produto AS Produto, 
PE.qtde AS quantidade, PE.cod_pedido AS Pedido,
PR.preco * PE.qtde AS Fatura
FROM pedidos PE
INNER JOIN clientes CL
	ON PE.cod_cliente = CL.cod_cliente
INNER JOIN produtos PR
	ON PE.cod_produto = PR.cod_produto;
    
    
    
CREATE OR REPLACE VIEW vendas AS
  SELECT CL.nome_cliente AS CLiente, PR.nome_produto AS Produto, 
  PE.qtde AS quantidade, PE.cod_pedido AS Pedido,
  PR.preco * PE.qtde AS Fatura
  FROM pedidos PE
  INNER JOIN clientes CL
      ON PE.cod_cliente = CL.cod_cliente
  INNER JOIN produtos PR
      ON PE.cod_produto = PR.cod_produto;
    
    
  SELECT Cliente, SUM(Fatura)
  FROM vendas
  GROUP BY Cliente;
  
  ALTER VIEW vendas RENAME TO faturas;
  
  DROP VIEW faturas;
  
  DROP VIEW IF EXISTS faturas;
  
  DROP VIEW IF EXISTS faturas CASCADE;
  