-- Realizando consulta de empresas

SELECT
    e.nome 'Empresas',
    c.nome 'Cidades'
FROM
    empresas e,
    cidades c,
    empresas_unidades eu
WHERE
    e.id = eu.empresa_id
    AND c.id = eu.cidade_id;

-- Busca com mais a condição da sede

SELECT
    e.nome 'Empresas',
    c.nome 'Cidades'
FROM
    empresas e,
    cidades c,
    empresas_unidades eu
WHERE
    e.id = eu.empresa_id
    AND c.id = eu.cidade_id
    AND sede = 1;