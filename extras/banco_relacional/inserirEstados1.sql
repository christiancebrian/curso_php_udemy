-- Inserindo primeiro registro ao banco de dados da tabela estados

INSERT INTO
    estados (nome, sigla, regiao, populacao)
VALUES ('Acre', 'AC', 'Norte', 0.83);

-- Inserindo o restante dos estados do Brasil

INSERT INTO
    estados (nome, sigla, regiao, populacao)
VALUES (
        'Alagoas',
        'AL',
        'Nordeste',
        0.8
    ), ('Amapá', 'AP', 'Norte', 4.5), ('Amazonas', 'AM', 'Norte', 4.2), ('Bahia', 'BA', 'Nordeste', 1.4), ('Ceará', 'CE', 'Nordeste', 0.9), (
        'Distrito Federal',
        'DF',
        'Centro-Oeste',
        0.3
    ), (
        'Espírito Santo',
        'ES',
        'Sudeste',
        0.4
    ), (
        'Goiás',
        'GO',
        'Centro-Oeste',
        7.1
    ), (
        'Maranhão',
        'MA',
        'Nordeste',
        0.7
    ), (
        'Mato Grosso',
        'MT',
        'Centro-Oeste',
        5.4
    ), (
        'Mato Grosso do Sul',
        'MS',
        'Centro-Oeste',
        0.2
    ), (
        'Minas Gerais',
        'MG',
        'Sudeste',
        3.1
    ), ('Pará', 'PA', 'Norte', 8.5), (
        'Paraíba',
        'PB',
        'Nordeste',
        4.0
    ), ('Paraná', 'PR', 'Sul', 1.8), (
        'Pernambuco',
        'PE',
        'Nordeste',
        0.9
    ), ('Piauí', 'PI', 'Nordeste', 0.3), (
        'Rio de Janeiro',
        'RJ',
        'Sudeste',
        1.7
    ), (
        'Rio Grande do Norte',
        'RN',
        'Nordeste',
        0.3
    ), (
        'Rio Grande do Sul',
        'RS',
        'Sul',
        0.11
    ), ('Rondônia', 'RO', 'Norte', 0.2), ('Roraima', 'RR', 'Norte', 0.6), (
        'Santa Catarina',
        'SC',
        'Sul',
        0.8
    ), (
        'São Paulo',
        'SP',
        'Sudeste',
        0.8
    ), (
        'Sergipe',
        'SE',
        'Nordeste',
        2.0
    ), ('Tocantins', 'TO', 'Norte', 0.1);