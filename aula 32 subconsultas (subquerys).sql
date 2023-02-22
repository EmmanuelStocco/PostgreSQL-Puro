SELECT * FROM livros
WHERE preco_livro = (
	SELECT MAX(preco_livro)
	FROM livros
)