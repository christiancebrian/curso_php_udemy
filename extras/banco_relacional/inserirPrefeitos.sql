-- Inserindo dados na tabela prefeito

INSERT INTO
    prefeitos (nome, cidade_id)
VALUES ('Rodrigo Neves', 2), ('Raquel Lyra', 3), ('Zenaldo Coutinho', null);

-- Inserindo mais um prefeito sem cidade

INSERT INTO
    prefeitos (nome, cidade_id)
VALUES ('Rafael Greca', null);