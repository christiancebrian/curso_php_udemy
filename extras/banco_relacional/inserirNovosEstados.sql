-- Inserindo novos estados para aula de exclusão de registros

-- Inserindo

INSERT INTO
    estados (
        id,
        nome,
        sigla,
        regiao,
        populacao
    )
VALUES (1000, 'Novo', 'NV', 'Sul', 5.89);

-- De agora em diante, após a inserção do registro acima, o auto-incremento será a partir de 1000

-- Inserindo novo registro para teste do comentário acima

INSERT INTO
    estados (nome, sigla, regiao, populacao)
VALUES (
        'Mais Novo',
        'MN',
        'Norte',
        2.74
    );

--