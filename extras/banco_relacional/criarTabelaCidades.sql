-- Criando a tabela cidades com a chave estrangeira para tabela estados

CREATE TABLE
    IF NOT EXISTS cidades (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        nome VARCHAR(255) NOT NULL,
        estado_id INT UNSIGNED NOT NULL,
        area DECIMAL(10, 2),
        PRIMARY KEY (id),
        FOREIGN KEY (estado_id) REFERENCES estados (id)
    );