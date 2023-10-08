-- Criando a tabela empresas

CREATE TABLE
    IF NOT EXISTS empresas (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        nome VARCHAR(255) NOT NULL,
        cnpj INT UNSIGNED,
        PRIMARY KEY (id),
        UNIQUE KEY (cnpj)
    );

-- Criando a tabela no qual vai unir cidades e empresas. O nome bom para esta tabela é 'empresas_unidades', no que diz respeito a cada unidade da empresa e sua respectiva cidade

-- A o tipo de campo 'TINYINT()', permite definir a quantidade de numerais dentro dos parenteses, caso abaixo permite somente um valor numeral de um caracter

-- Pode se definir duas colunas como uma PRIMARY KEY

CREATE TABLE
    IF NOT EXISTS empresas_unidades (
        empresa_id INT UNSIGNED NOT NULL,
        cidade_id INT UNSIGNED NOT NULL,
        sede TINYINT(1) NOT NULL,
        PRIMARY KEY (empresa_id, cidade_id)
    );