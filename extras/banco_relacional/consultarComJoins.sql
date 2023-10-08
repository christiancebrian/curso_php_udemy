-- Realizando diversas consultas com JOIN

-- O uso do INNER JOIN só traz os registros que possuem relação de acordo com o informado, no caso abaixo só retorna dois registros, pois só dois prefeitos possuem cidades na coluna cidades_id que trata-se de uma chave estrangeira para coluna cidades. O mesmo acontece com dois prefeitos.

SELECT * FROM cidades c INNER JOIN prefeitos p ON c.id = p.cidade_id;

-- Usando agora o LEFT JOIN, faz com que traga todos os registros que do lado LEFT (esquerdo da consulta) mesmo não tendo referências com o lado RIGHT (direito)

SELECT * FROM cidades c LEFT JOIN prefeitos p ON c.id = p.cidade_id;

-- O oposto de LEFT JOIN, agora RIGHT JOIN

SELECT * FROM cidades c RIGHT JOIN prefeitos p ON c.id = p.cidade_id;

-- O FULL JOIN gera erro, mas para usar basta usar o UNION

-- SELECT * FROM cidades c FULL JOIN prefeitos p ON c.id = p.cidade_id;

-- Com o uso do UNION é realizado os dois SELECT de uma vez

SELECT *
FROM cidades c
    LEFT JOIN prefeitos p ON c.id = p.cidade_id
UNION
SELECT *
FROM cidades c
    RIGHT JOIN prefeitos p ON c.id = p.cidade_id;

-- Também exite o UNION ALL que traz por completo, más ai gera duplicações de dados por trazer tudo

SELECT *
FROM cidades c
    LEFT JOIN prefeitos p ON c.id = p.cidade_id
UNION ALL
SELECT *
FROM cidades c
    RIGHT JOIN prefeitos p ON c.id = p.cidade_id;