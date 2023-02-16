INSERT INTO clientes (cod_cliente, nome_cliente, sobrenome_cliente)
VALUES (1, 'Emmanuel', 'Stocco')


INSERT INTO produtos (cod_produto, nome_produto, descricao, preco, qtde_estoque, sobrenome_cliente)
VALUES  
	(1, 'Alcool Gel', 'Garrafa de álcool em gel de 1 litro', 12.90, 20, 'cliente err'),
	(2, 'Luvas de Latex', 'Caixas de luvas de latex de 100 unidades', 32.50, 25,'errei'),
	(3, 'Pasta de Dentes', 'Tubo de pasta de dentes de 50g', 3.66,12, 'errei')






ALTER TABLE produtos DROP COLUMN  sobrenome_cliente;






INSERT INTO clientes (cod_cliente, nome_cliente, sobrenome_cliente)
 VALUES
 (3, 'pedro', 'rico')

INSERT INTO pedidos (cod_cliente, cod_produto, qtde)
VALUES
(1,2,3),
(2,3,2),
(1,3,4)


ALTER TABLE produtos DROP COLUMN  sobrenome_cliente;







