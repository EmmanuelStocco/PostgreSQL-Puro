-- conte quantidade de dados da tabela 
SELECT COUNT (*) FROM clientes; 
SELECT COUNT (nome_cliente) FROM clientes;

-- itens sem repetição
SELECT COUNT (DISTINCT nome_cliente) FROM clientes;

-- Maior e menor 
SELECT MAX (preco) FROM produtos;
SELECT MIN (preco) FROM produtos;

--Média
SELECT AVG (preco) FROM produtos;

--Média Arredondada
SELECT ROUND(AVG(preco), 2) FROM produtos;

-- Somatorio
SELECT SUM (preco), nome_produto FROM produtos;