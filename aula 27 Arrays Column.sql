CREATE TABLE escalaTrabalho (
    codFunc smallInt,
    escala char(3)[]
);



INSERT INTO escalaTrabalho(codFunc,escala)
VALUES
(1, '{"SEG", "TER", "QUA"}'),
(2, '{"QUI", "SEX", "SAB"}'),
(3, '{"SEG", "QUA", "SEX"}'); 

SELECT * FROM escalatrabalho;

SELECT codFunc, escala[1]
FROM escalatrabalho;

SELECT codFunc FROM escalaTrabalho
WHERE 'QUA' = ANY(escala);


UPDATE escalaTrabalho
SET escala = ARRAY['TER', 'QUI', 'SAB']
WHERE codFunc = 3