--Mostra o titulo do audiobook e o nome do autor do titulo
SELECT aud.titulo, aut.nome as "AUTOR"
FROM audiobook aud INNER JOIN escreveu esc
ON aud.id_audiobook = esc.id_audiobook
INNER JOIN autor aut
ON aut.id_autor = esc.id_autor
ORDER BY aud.titulo ASC;

--Mostra o nome do Narrador e a quantidadede Audiobooks que ele narrou em cada Categoria
SELECT nar.nome as "NARRADOR", cat.nome as "CATEGORIA",COUNT(*) as "QUANTIDADE"
FROM narrador nar INNER JOIN narra n
ON nar.id_narrador = n.id_narrador
INNER JOIN audiobook aud
ON aud.id_audiobook = n.id_audiobook
INNER JOIN pertence per
ON per.id_audiobook = aud.id_audiobook
INNER JOIN categoria cat
ON cat.id_categoria = per.id_categoria
GROUP BY nar.nome,cat.nome;

--Mostra a soma das durações de todos os Audiobooks de cada Categoria
SELECT cat.nome as "CATEGORIA", SUM(aud.duracao) as "DURAÇÃO TOTAL EM MINUTOS"
FROM categoria cat INNER JOIN pertence per
ON cat.id_categoria = per.id_categoria
INNER JOIN audiobook aud
ON aud.id_audiobook = per.id_audiobook
GROUP BY cat.nome;

