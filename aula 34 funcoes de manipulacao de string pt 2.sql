SELECT overlay ('Bózum' placing 'son' from 3 for 4);

SELECT position('Treina' in 'Teste Treinamentos');

SELECT substring ('Emmanuel Stocco' from 9);


SELECT upper(substring(nome from 1 for 3))
FROM livros;

trim([leading | trailing | both] [caracteres] from string);

SELECT '     EMMANUEL';
SELECT trim(both from '   EMMANUEL');

INSERT INTO tb_editoras(id_editora, nome_editora)
VALUES(8, '     SPRINGER   ');
---
INSERT INTO tb_editoras(id_editora, nome_editora)
VALUES(8, trim('     SPRINGER   '));


