
CREATE TABLE clientes (
  cod_cliente INT PRIMARY KEY, 
  nome_cliente VARCHAR(20) NOT NULL,
  sobrenome_cliente VARCHAR(40) NOT NULL
 );


CREATE TABLE produtos (
  cod_produto INT PRIMARY KEY, 
  nome_produto VARCHAR(30) NOT NULL,
  descricao TEXT NULL,
  preco NUMERIC CHECK(preco > 0) NOT NULL,
  qtde_estoque SMALLINT DEFAULT 0,
  sobrenome_cliente VARCHAR(40) NOT NULL
 );

CREATE TABLE pedidos(
	cod_pedido SERIAL PRIMARY KEY,
  	cod_cliente INT NOT NULL REFERENCES clientes(cod_cliente),
  	cod_produto INT NOT NULL,
  	qtde SMALLINT NOT NULL,
  	FOREIGN KEY (cod_produto) REFERENCES produtos(cod_produto)
);






