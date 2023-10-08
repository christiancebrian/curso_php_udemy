-- Inserindo registros na tabela empresas

INSERT INTO
    empresas (nome, cnpj)
VALUES ('Bradesco', 51929959000147), ('Vale', 26313534000161), ('Cielo', 32279924000165);

-- Erro acima, porque o campo cnpj com int não serve. A quantidade de caracteres do cnpj está acima do que o tipo int permite.ADD

-- Alterando o tipo da coluna cnpj da tabela empresas para correção do erro acima

ALTER TABLE empresas MODIFY cnpj VARCHAR(14);

-- Decrevendo estrutura da tabela

DESC empresas;

-- Inserindo valores na tabela empresas_unidades

INSERT INTO
    empresas_unidades (empresa_id, cidade_id, sede)
VALUES (1, 1, 1), (1, 2, 0), (2, 1, 0), (2, 2, 1);