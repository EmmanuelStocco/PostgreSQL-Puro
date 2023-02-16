SELECT * FROM produtos

UPDATE produtos
SET descricao = 'pasta nova formula'
WHERE cod_produto = 3;


UPDATE produtos
SET preco = preco * 1.10;