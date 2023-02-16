SELECT nome_produto, preco, qtde_estoque
FROM produtos
WHERE preco > 12.00 AND qtde_estoque > 10;

SELECT nome_produto, preco, qtde_estoque
FROM produtos
WHERE preco > 12.00 AND qtde_estoque <> 10;

SELECT * FROM produtos
WHERE nome_produto != 'Refrigerante';