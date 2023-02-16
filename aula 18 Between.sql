-- intervalos de dados 

SELECT * FROM PRODUTOS
Where preco BETWEEN 4.00 AND 20.00
ORDER BY preco ASC;

SELECT * FROM PRODUTOS
Where preco NOT BETWEEN 4.00 AND 20.00

