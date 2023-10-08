-- Como consultar na tabela estados os registros

-- O mais simples das querys e retorna todos os campos e valores'

SELECT * FROM estados;

-- Consultando tabela estados com os campos nome e sigla

SELECT nome, sigla FROM estados;

-- Agora alterando o nome a ser apresentado pela coluna

SELECT nome AS 'Nome do Estado', sigla FROM estados;

-- Agora filtrando estados por região

SELECT
    nome AS 'Nome dos Estados',
    sigla
FROM estados
WHERE regiao = 'Sul';

-- Filtro de população maior que 5

SELECT nome, populacao FROM estados WHERE populacao >= 5;

-- Em ordem decrescente

SELECT nome, populacao
FROM estados
WHERE populacao >= 5
ORDER BY populacao DESC;