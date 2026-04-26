-- =================================================
-- Dados Fictícios para CP2 - FIAP 2TDSPG 2026
-- =================================================

-- Inserir clientes apenas se a tabela estiver vazia
INSERT INTO clientes (nome, email, cpf, telefone, data_nascimento, endereco, criado_em)
SELECT * FROM (SELECT
    'Ana Lima' as nome,
    'ana.lima@email.com' as email,
    '12345678901' as cpf,
    '(11) 98765-4321' as telefone,
    '1995-03-15' as data_nascimento,
    'Rua das Flores, 123, São Paulo - SP' as endereco,
    NOW() as criado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE email = 'ana.lima@email.com');

INSERT INTO clientes (nome, email, cpf, telefone, data_nascimento, endereco, criado_em)
SELECT * FROM (SELECT
    'Carlos Souza' as nome,
    'carlos.souza@email.com' as email,
    '23456789012' as cpf,
    '(11) 91234-5678' as telefone,
    '1990-07-22' as data_nascimento,
    'Av. Paulista, 456, São Paulo - SP' as endereco,
    NOW() as criado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE email = 'carlos.souza@email.com');

INSERT INTO clientes (nome, email, cpf, telefone, data_nascimento, endereco, criado_em)
SELECT * FROM (SELECT
    'Beatriz Ferreira' as nome,
    'beatriz.ferreira@email.com' as email,
    '34567890123' as cpf,
    '(21) 99876-5432' as telefone,
    '1998-11-05' as data_nascimento,
    'Rua Copacabana, 789, Rio de Janeiro - RJ' as endereco,
    NOW() as criado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE email = 'beatriz.ferreira@email.com');

INSERT INTO clientes (nome, email, cpf, telefone, data_nascimento, endereco, criado_em)
SELECT * FROM (SELECT
    'Diego Martins' as nome,
    'diego.martins@email.com' as email,
    '45678901234' as cpf,
    '(41) 98765-1234' as telefone,
    '1985-01-30' as data_nascimento,
    'Rua XV de Novembro, 321, Curitiba - PR' as endereco,
    NOW() as criado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE email = 'diego.martins@email.com');

INSERT INTO clientes (nome, email, cpf, telefone, data_nascimento, endereco, criado_em)
SELECT * FROM (SELECT
    'Fernanda Costa' as nome,
    'fernanda.costa@email.com' as email,
    '56789012345' as cpf,
    '(51) 97654-3210' as telefone,
    '2000-06-18' as data_nascimento,
    'Av. Borges de Medeiros, 654, Porto Alegre - RS' as endereco,
    NOW() as criado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE email = 'fernanda.costa@email.com');

-- Inserir produtos apenas se a tabela estiver vazia
INSERT INTO produtos (nome, descricao, preco, estoque, categoria, criado_em, atualizado_em)
SELECT * FROM (SELECT
    'Notebook Dell Inspiron 15' as nome,
    'Notebook com processador Intel Core i5, 8GB RAM, SSD 256GB' as descricao,
    3299.99 as preco,
    15 as estoque,
    'Informática' as categoria,
    NOW() as criado_em,
    NOW() as atualizado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM produtos WHERE nome = 'Notebook Dell Inspiron 15');

INSERT INTO produtos (nome, descricao, preco, estoque, categoria, criado_em, atualizado_em)
SELECT * FROM (SELECT
    'Smartphone Samsung Galaxy A54' as nome,
    'Tela 6.4", câmera 50MP, bateria 5000mAh, 128GB' as descricao,
    1899.90 as preco,
    32 as estoque,
    'Smartphones' as categoria,
    NOW() as criado_em,
    NOW() as atualizado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM produtos WHERE nome = 'Smartphone Samsung Galaxy A54');

INSERT INTO produtos (nome, descricao, preco, estoque, categoria, criado_em, atualizado_em)
SELECT * FROM (SELECT
    'Fone Bluetooth JBL Tune 520' as nome,
    'Fone sem fio com 57h de bateria e Pure Bass Sound' as descricao,
    349.90 as preco,
    48 as estoque,
    'Áudio' as categoria,
    NOW() as criado_em,
    NOW() as atualizado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM produtos WHERE nome = 'Fone Bluetooth JBL Tune 520');

INSERT INTO produtos (nome, descricao, preco, estoque, categoria, criado_em, atualizado_em)
SELECT * FROM (SELECT
    'Monitor LG 24 Full HD' as nome,
    'Monitor 24 polegadas Full HD IPS, 75Hz, HDMI/VGA' as descricao,
    899.00 as preco,
    10 as estoque,
    'Informática' as categoria,
    NOW() as criado_em,
    NOW() as atualizado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM produtos WHERE nome = 'Monitor LG 24 Full HD');

INSERT INTO produtos (nome, descricao, preco, estoque, categoria, criado_em, atualizado_em)
SELECT * FROM (SELECT
    'Teclado Mecânico Redragon K552' as nome,
    'Teclado gamer mecânico TKL, switches blue, RGB' as descricao,
    279.90 as preco,
    25 as estoque,
    'Periféricos' as categoria,
    NOW() as criado_em,
    NOW() as atualizado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM produtos WHERE nome = 'Teclado Mecânico Redragon K552');

INSERT INTO produtos (nome, descricao, preco, estoque, categoria, criado_em, atualizado_em)
SELECT * FROM (SELECT
    'Mouse Logitech G305' as nome,
    'Mouse gamer sem fio, sensor HERO 12K, 6 botões' as descricao,
    199.90 as preco,
    0 as estoque,
    'Periféricos' as categoria,
    NOW() as criado_em,
    NOW() as atualizado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM produtos WHERE nome = 'Mouse Logitech G305');

INSERT INTO produtos (nome, descricao, preco, estoque, categoria, criado_em, atualizado_em)
SELECT * FROM (SELECT
    'SSD Kingston NV2 500GB' as nome,
    'SSD NVMe M.2, leitura até 3500MB/s, PCIe 4.0' as descricao,
    249.90 as preco,
    20 as estoque,
    'Armazenamento' as categoria,
    NOW() as criado_em,
    NOW() as atualizado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM produtos WHERE nome = 'SSD Kingston NV2 500GB');

INSERT INTO produtos (nome, descricao, preco, estoque, categoria, criado_em, atualizado_em)
SELECT * FROM (SELECT
    'Webcam Logitech C920' as nome,
    'Webcam HD 1080p, autofoco, microfone integrado' as descricao,
    499.00 as preco,
    7 as estoque,
    'Periféricos' as categoria,
    NOW() as criado_em,
    NOW() as atualizado_em
) AS tmp
WHERE NOT EXISTS (SELECT 1 FROM produtos WHERE nome = 'Webcam Logitech C920');
