-- Fazendo consultas com mais de uma tabela (referência)

-- Acesso a todos os dados das duas tabelas

SELECT * FROM estados e, cidades c;

-- Adicionando um filtro para não dar uma busca carteziano

SELECT * FROM estados e, cidades c WHERE e.id = c.estado_id;

-- Coluna nome é ambígua, por isso o uso de alias

SELECT
    e.nome 'Estados',
    e.sigla 'UF',
    e.regiao 'Região',
    c.nome 'Capitais'
FROM estados e, cidades c
WHERE e.id = c.estado_id;

-- Usando o INNER JOIN junção das tabelas

SELECT
    c.nome 'Cidades',
    e.nome 'Estados',
    regiao 'Regiões'
FROM estados e
    INNER JOIN cidades c ON e.id = c.estado_id;