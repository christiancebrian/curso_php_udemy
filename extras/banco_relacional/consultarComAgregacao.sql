-- Consultas com agregação e soma de valores, função sum = soma

SELECT
    regiao AS 'Região',
    SUM(populacao) AS Total
FROM estados
GROUP BY regiao
ORDER BY Total DESC;

-- Pegando o total de população

SELECT SUM(populacao) AS Total FROM estados;

-- Função avg = média

SELECT AVG(populacao) AS Total FROM estados;