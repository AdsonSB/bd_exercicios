DROP TABLE IF EXISTS itens_venda;
DROP TABLE IF EXISTS vendas;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS vendedores;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    id_cliente      INTEGER       PRIMARY KEY,
    nome_cliente    VARCHAR(100)  NOT NULL,
    cidade          VARCHAR(80)   NOT NULL,
    estado          CHAR(2)       NOT NULL
);

CREATE TABLE vendedores (
    id_vendedor     INTEGER       PRIMARY KEY,
    nome_vendedor   VARCHAR(100)  NOT NULL,
    setor           VARCHAR(50)   NOT NULL
);

CREATE TABLE produtos (
    id_produto      INTEGER        PRIMARY KEY,
    nome_produto    VARCHAR(120)   NOT NULL,
    categoria       VARCHAR(60)    NOT NULL,
    marca           VARCHAR(60)    NOT NULL,
    preco            DECIMAL(10,2) NOT NULL
);

CREATE TABLE vendas (
    id_venda          INTEGER        PRIMARY KEY,
    data_venda        DATE           NOT NULL,
    id_cliente        INTEGER        NOT NULL,
    id_vendedor       INTEGER        NOT NULL,
    forma_pagamento   VARCHAR(40)    NOT NULL,
    status            VARCHAR(20)    NOT NULL,
    valor_total       DECIMAL(10,2)  NOT NULL,
    CONSTRAINT fk_vendas_clientes
        FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    CONSTRAINT fk_vendas_vendedores
        FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

CREATE TABLE itens_venda (
    id_item          INTEGER        PRIMARY KEY,
    id_venda         INTEGER        NOT NULL,
    id_produto       INTEGER        NOT NULL,
    quantidade       INTEGER        NOT NULL,
    valor_unitario   DECIMAL(10,2)  NOT NULL,
    desconto         DECIMAL(5,2)   NOT NULL DEFAULT 0,
    CONSTRAINT fk_itens_venda
        FOREIGN KEY (id_venda) REFERENCES vendas(id_venda),
    CONSTRAINT fk_itens_produtos
        FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- ============================================================
-- 50 REGISTROS: CLIENTES
-- ============================================================

INSERT INTO clientes (id_cliente, nome_cliente, cidade, estado) VALUES
    (1, 'Ana Souza', 'Curitiba', 'PR'),
    (2, 'Bruno Lima', 'São José dos Pinhais', 'PR'),
    (3, 'Carla Mendes', 'Curitiba', 'PR'),
    (4, 'Diego Martins', 'Colombo', 'PR'),
    (5, 'Eduarda Alves', 'Pinhais', 'PR'),
    (6, 'Felipe Rocha', 'Curitiba', 'PR'),
    (7, 'Gabriela Costa', 'Araucária', 'PR'),
    (8, 'Henrique Silva', 'Curitiba', 'PR'),
    (9, 'Isabela Nunes', 'Campo Largo', 'PR'),
    (10, 'João Ribeiro', 'Curitiba', 'PR'),
    (11, 'Karen Oliveira', 'Piraquara', 'PR'),
    (12, 'Lucas Ferreira', 'Curitiba', 'PR'),
    (13, 'Mariana Gomes', 'Almirante Tamandaré', 'PR'),
    (14, 'Nicolas Santos', 'Curitiba', 'PR'),
    (15, 'Olívia Barros', 'Fazenda Rio Grande', 'PR'),
    (16, 'Paulo Moreira', 'Curitiba', 'PR'),
    (17, 'Queila Teixeira', 'Quatro Barras', 'PR'),
    (18, 'Rafael Cardoso', 'Curitiba', 'PR'),
    (19, 'Sabrina Correia', 'Campina Grande do Sul', 'PR'),
    (20, 'Thiago Lopes', 'Curitiba', 'PR'),
    (21, 'Úrsula Freitas', 'Mandirituba', 'PR'),
    (22, 'Vinícius Melo', 'Curitiba', 'PR'),
    (23, 'William Araújo', 'Rio Branco do Sul', 'PR'),
    (24, 'Yasmin Duarte', 'Curitiba', 'PR'),
    (25, 'Alice Pires', 'Joinville', 'SC'),
    (26, 'Bernardo Castro', 'Florianópolis', 'SC'),
    (27, 'Cecília Farias', 'Blumenau', 'SC'),
    (28, 'Daniela Reis', 'Itajaí', 'SC'),
    (29, 'Enzo Carvalho', 'São Paulo', 'SP'),
    (30, 'Fernanda Vieira', 'Campinas', 'SP'),
    (31, 'Gustavo Moraes', 'Sorocaba', 'SP'),
    (32, 'Helena Campos', 'Santos', 'SP'),
    (33, 'Igor Monteiro', 'Rio de Janeiro', 'RJ'),
    (34, 'Juliana Peixoto', 'Niterói', 'RJ'),
    (35, 'Kaique Batista', 'Belo Horizonte', 'MG'),
    (36, 'Larissa Cunha', 'Londrina', 'PR'),
    (37, 'Marcelo Prado', 'Maringá', 'PR'),
    (38, 'Natália Assis', 'Cascavel', 'PR'),
    (39, 'Otávio Rezende', 'Ponta Grossa', 'PR'),
    (40, 'Priscila Leal', 'Guarapuava', 'PR'),
    (41, 'Renato Diniz', 'Paranaguá', 'PR'),
    (42, 'Simone Amaral', 'Curitiba', 'PR'),
    (43, 'Tadeu Coelho', 'Curitiba', 'PR'),
    (44, 'Valéria Neves', 'Curitiba', 'PR'),
    (45, 'Wesley Ramos', 'Curitiba', 'PR'),
    (46, 'Adriana Luz', 'Curitiba', 'PR'),
    (47, 'Caio Borges', 'Curitiba', 'PR'),
    (48, 'Débora Matos', 'Curitiba', 'PR'),
    (49, 'Emanuel Pinto', 'Curitiba', 'PR'),
    (50, 'Flávia Xavier', 'Curitiba', 'PR');

-- ============================================================
-- 50 REGISTROS: VENDEDORES
-- ============================================================

INSERT INTO vendedores (id_vendedor, nome_vendedor, setor) VALUES
    (1, 'Amanda Freire', 'Loja Física'),
    (2, 'Breno Paiva', 'E-commerce'),
    (3, 'Camila Sales', 'Corporativo'),
    (4, 'Douglas Reis', 'Televendas'),
    (5, 'Elaine Braga', 'Marketplace'),
    (6, 'Fábio Moura', 'Loja Física'),
    (7, 'Giovana Teles', 'E-commerce'),
    (8, 'Hugo Andrade', 'Corporativo'),
    (9, 'Ingrid Leite', 'Televendas'),
    (10, 'Jorge Cunha', 'Marketplace'),
    (11, 'Kátia Prado', 'Loja Física'),
    (12, 'Leandro Vaz', 'E-commerce'),
    (13, 'Mônica Dias', 'Corporativo'),
    (14, 'Natan Pacheco', 'Televendas'),
    (15, 'Patrícia Alves', 'Marketplace'),
    (16, 'Ricardo Falcão', 'Loja Física'),
    (17, 'Sara Brito', 'E-commerce'),
    (18, 'Tomás Queiroz', 'Corporativo'),
    (19, 'Vanessa Lins', 'Televendas'),
    (20, 'Yuri Bastos', 'Marketplace'),
    (21, 'Aline Rocha', 'Loja Física'),
    (22, 'Bruno Medeiros', 'E-commerce'),
    (23, 'Cláudia Fontes', 'Corporativo'),
    (24, 'Davi Correia', 'Televendas'),
    (25, 'Ester Maia', 'Marketplace'),
    (26, 'Fernando Lima', 'Loja Física'),
    (27, 'Graziella Moraes', 'E-commerce'),
    (28, 'Heitor Nunes', 'Corporativo'),
    (29, 'Iara Martins', 'Televendas'),
    (30, 'Jonas Cardoso', 'Marketplace'),
    (31, 'Kelly Ribeiro', 'Loja Física'),
    (32, 'Luan Pereira', 'E-commerce'),
    (33, 'Márcia Carvalho', 'Corporativo'),
    (34, 'Noel Souza', 'Televendas'),
    (35, 'Pamela Castro', 'Marketplace'),
    (36, 'Raul Mendes', 'Loja Física'),
    (37, 'Silvia Lopes', 'E-commerce'),
    (38, 'Túlio Barros', 'Corporativo'),
    (39, 'Vitória Gomes', 'Televendas'),
    (40, 'Wallace Freitas', 'Marketplace'),
    (41, 'Ágata Moreira', 'Loja Física'),
    (42, 'César Silva', 'E-commerce'),
    (43, 'Denise Oliveira', 'Corporativo'),
    (44, 'Edson Santos', 'Televendas'),
    (45, 'Francine Costa', 'Marketplace'),
    (46, 'Gilberto Melo', 'Loja Física'),
    (47, 'Heloísa Reis', 'E-commerce'),
    (48, 'Ítalo Vieira', 'Corporativo'),
    (49, 'Jéssica Pires', 'Televendas'),
    (50, 'Kevin Araújo', 'Marketplace');

-- ============================================================
-- 50 REGISTROS: PRODUTOS
-- ============================================================

INSERT INTO produtos (id_produto, nome_produto, categoria, marca, preco) VALUES
    (1, 'Notebook Pro 14', 'Informática', 'TechPlus', 4599.90),
    (2, 'Mouse Sem Fio', 'Informática', 'ClickMax', 89.90),
    (3, 'Teclado Mecânico', 'Informática', 'KeyMaster', 329.90),
    (4, 'Monitor 24 Polegadas', 'Informática', 'Vision', 899.90),
    (5, 'SSD 1 TB', 'Informática', 'FastDrive', 449.90),
    (6, 'Webcam Full HD', 'Informática', 'Vision', 219.90),
    (7, 'Headset Gamer', 'Informática', 'SoundPlay', 289.90),
    (8, 'Roteador Wi-Fi 6', 'Informática', 'Connect', 399.90),
    (9, 'Impressora Multifuncional', 'Informática', 'PrintNow', 799.90),
    (10, 'Hub USB-C', 'Informática', 'Connect', 179.90),
    (11, 'Smartphone X1', 'Telefonia', 'MobileX', 1999.90),
    (12, 'Smartphone X2 Pro', 'Telefonia', 'MobileX', 3299.90),
    (13, 'Carregador Turbo', 'Telefonia', 'Volt', 119.90),
    (14, 'Capa Antichoque', 'Telefonia', 'SafeCase', 69.90),
    (15, 'Fone Bluetooth', 'Telefonia', 'SoundPlay', 199.90),
    (16, 'Smartwatch Fit', 'Wearables', 'Move', 599.90),
    (17, 'Pulseira Inteligente', 'Wearables', 'Move', 249.90),
    (18, 'TV 50 Polegadas 4K', 'TV e Vídeo', 'Vision', 2699.90),
    (19, 'Soundbar 2.1', 'Áudio', 'SoundPlay', 999.90),
    (20, 'Caixa de Som Bluetooth', 'Áudio', 'BeatBox', 349.90),
    (21, 'Air Fryer 5L', 'Eletrodomésticos', 'CasaFácil', 549.90),
    (22, 'Liquidificador 1200W', 'Eletrodomésticos', 'CasaFácil', 229.90),
    (23, 'Cafeteira Elétrica', 'Eletrodomésticos', 'BelaCasa', 189.90),
    (24, 'Micro-ondas 32L', 'Eletrodomésticos', 'BelaCasa', 799.90),
    (25, 'Aspirador Vertical', 'Eletrodomésticos', 'CleanHome', 499.90),
    (26, 'Ventilador de Coluna', 'Climatização', 'FreshAir', 299.90),
    (27, 'Climatizador Portátil', 'Climatização', 'FreshAir', 699.90),
    (28, 'Ar-condicionado 12000 BTU', 'Climatização', 'FreshAir', 2399.90),
    (29, 'Panela Elétrica', 'Eletrodomésticos', 'CasaFácil', 319.90),
    (30, 'Grill Elétrico', 'Eletrodomésticos', 'CasaFácil', 249.90),
    (31, 'Lava-louças 10 Serviços', 'Eletrodomésticos', 'CleanHome', 2999.90),
    (32, 'Máquina de Lavar 12kg', 'Eletrodomésticos', 'CleanHome', 2299.90),
    (33, 'Geladeira Duplex 400L', 'Eletrodomésticos', 'BelaCasa', 3499.90),
    (34, 'Forno Elétrico 50L', 'Eletrodomésticos', 'BelaCasa', 899.90),
    (35, 'Cooktop de Indução', 'Eletrodomésticos', 'CasaFácil', 1399.90),
    (36, 'Ferro a Vapor', 'Eletroportáteis', 'CasaFácil', 159.90),
    (37, 'Secador de Cabelo', 'Cuidados Pessoais', 'BeautyPro', 199.90),
    (38, 'Chapinha Cerâmica', 'Cuidados Pessoais', 'BeautyPro', 169.90),
    (39, 'Barbeador Elétrico', 'Cuidados Pessoais', 'BeautyPro', 249.90),
    (40, 'Escova Secadora', 'Cuidados Pessoais', 'BeautyPro', 229.90),
    (41, 'Câmera de Segurança', 'Segurança', 'SafeHome', 399.90),
    (42, 'Fechadura Digital', 'Segurança', 'SafeHome', 699.90),
    (43, 'Campainha Inteligente', 'Segurança', 'SafeHome', 449.90),
    (44, 'Lâmpada Inteligente', 'Casa Inteligente', 'SmartCasa', 79.90),
    (45, 'Tomada Inteligente', 'Casa Inteligente', 'SmartCasa', 99.90),
    (46, 'Robô Aspirador', 'Casa Inteligente', 'SmartCasa', 1499.90),
    (47, 'Projetor Portátil', 'TV e Vídeo', 'Vision', 1899.90),
    (48, 'Controle Universal', 'TV e Vídeo', 'Connect', 129.90),
    (49, 'Suporte Articulado TV', 'TV e Vídeo', 'SafeMount', 199.90),
    (50, 'Filtro de Linha', 'Acessórios', 'Volt', 89.90);

-- ============================================================
-- 50 REGISTROS: VENDAS
-- ============================================================

INSERT INTO vendas (
    id_venda,
    data_venda,
    id_cliente,
    id_vendedor,
    forma_pagamento,
    status,
    valor_total
) VALUES
    (1, '2026-01-09', 7, 3, 'Pix', 'Concluída', 317.45),
    (2, '2026-01-13', 14, 6, 'Cartão de Crédito', 'Concluída', 454.90),
    (3, '2026-01-17', 21, 9, 'Boleto', 'Concluída', 592.35),
    (4, '2026-01-21', 28, 12, 'Dinheiro', 'Pendente', 729.80),
    (5, '2026-01-25', 35, 15, 'Cartão de Débito', 'Cancelada', 867.25),
    (6, '2026-01-29', 7, 18, 'Pix', 'Concluída', 1004.70),
    (7, '2026-02-02', 14, 1, 'Cartão de Crédito', 'Concluída', 1142.15),
    (8, '2026-02-06', 21, 4, 'Boleto', 'Concluída', 1279.60),
    (9, '2026-02-10', 28, 7, 'Dinheiro', 'Pendente', 1417.05),
    (10, '2026-02-14', 35, 10, 'Cartão de Débito', 'Cancelada', 1554.50),
    (11, '2026-02-18', 7, 13, 'Pix', 'Concluída', 1691.95),
    (12, '2026-02-22', 14, 16, 'Cartão de Crédito', 'Concluída', 1829.40),
    (13, '2026-02-26', 21, 19, 'Boleto', 'Concluída', 1966.85),
    (14, '2026-03-02', 28, 2, 'Dinheiro', 'Pendente', 2104.30),
    (15, '2026-03-06', 35, 5, 'Cartão de Débito', 'Cancelada', 2241.75),
    (16, '2026-03-10', 7, 8, 'Pix', 'Concluída', 2379.20),
    (17, '2026-03-14', 14, 11, 'Cartão de Crédito', 'Concluída', 2516.65),
    (18, '2026-03-18', 21, 14, 'Boleto', 'Concluída', 2654.10),
    (19, '2026-03-22', 28, 17, 'Dinheiro', 'Pendente', 2791.55),
    (20, '2026-03-26', 35, 20, 'Cartão de Débito', 'Cancelada', 2929.00),
    (21, '2026-03-30', 7, 3, 'Pix', 'Concluída', 3066.45),
    (22, '2026-04-03', 14, 6, 'Cartão de Crédito', 'Concluída', 3203.90),
    (23, '2026-04-07', 21, 9, 'Boleto', 'Concluída', 3341.35),
    (24, '2026-04-11', 28, 12, 'Dinheiro', 'Pendente', 3478.80),
    (25, '2026-04-15', 35, 15, 'Cartão de Débito', 'Cancelada', 3616.25),
    (26, '2026-04-19', 7, 18, 'Pix', 'Concluída', 3753.70),
    (27, '2026-04-23', 14, 1, 'Cartão de Crédito', 'Concluída', 3891.15),
    (28, '2026-04-27', 21, 4, 'Boleto', 'Concluída', 4028.60),
    (29, '2026-05-01', 28, 7, 'Dinheiro', 'Pendente', 4166.05),
    (30, '2026-05-05', 35, 10, 'Cartão de Débito', 'Cancelada', 4303.50),
    (31, '2026-05-09', 7, 13, 'Pix', 'Concluída', 4440.95),
    (32, '2026-05-13', 14, 16, 'Cartão de Crédito', 'Concluída', 4578.40),
    (33, '2026-05-17', 21, 19, 'Boleto', 'Concluída', 4715.85),
    (34, '2026-05-21', 28, 2, 'Dinheiro', 'Pendente', 4853.30),
    (35, '2026-05-25', 35, 5, 'Cartão de Débito', 'Cancelada', 190.75),
    (36, '2026-05-29', 7, 8, 'Pix', 'Concluída', 328.20),
    (37, '2026-06-02', 14, 11, 'Cartão de Crédito', 'Concluída', 465.65),
    (38, '2026-06-06', 21, 14, 'Boleto', 'Concluída', 603.10),
    (39, '2026-06-10', 28, 17, 'Dinheiro', 'Pendente', 740.55),
    (40, '2026-06-14', 35, 20, 'Cartão de Débito', 'Cancelada', 878.00),
    (41, '2026-06-18', 7, 3, 'Pix', 'Concluída', 1015.45),
    (42, '2026-06-22', 14, 6, 'Cartão de Crédito', 'Concluída', 1152.90),
    (43, '2026-06-26', 21, 9, 'Boleto', 'Concluída', 1290.35),
    (44, '2026-06-30', 28, 12, 'Dinheiro', 'Pendente', 1427.80),
    (45, '2026-01-05', 35, 15, 'Cartão de Débito', 'Cancelada', 1565.25),
    (46, '2026-01-09', 7, 18, 'Pix', 'Concluída', 1702.70),
    (47, '2026-01-13', 14, 1, 'Cartão de Crédito', 'Concluída', 1840.15),
    (48, '2026-01-17', 21, 4, 'Boleto', 'Concluída', 1977.60),
    (49, '2026-01-21', 28, 7, 'Dinheiro', 'Pendente', 2115.05),
    (50, '2026-01-25', 35, 10, 'Cartão de Débito', 'Cancelada', 2252.50);

-- ============================================================
-- 50 REGISTROS: ITENS_VENDA
-- ============================================================

INSERT INTO itens_venda (
    id_item,
    id_venda,
    id_produto,
    quantidade,
    valor_unitario,
    desconto
) VALUES
    (1, 1, 9, 2, 759.90, 5.00),
    (2, 2, 18, 3, 2429.91, 10.00),
    (3, 3, 27, 4, 734.89, 15.00),
    (4, 4, 36, 1, 159.90, 20.00),
    (5, 5, 5, 2, 427.40, 0.00),
    (6, 6, 14, 3, 62.91, 5.00),
    (7, 7, 23, 4, 199.40, 10.00),
    (8, 8, 32, 1, 2299.90, 15.00),
    (9, 9, 1, 2, 4369.90, 20.00),
    (10, 10, 10, 3, 161.91, 0.00),
    (11, 11, 19, 4, 1049.89, 5.00),
    (12, 12, 28, 1, 2399.90, 10.00),
    (13, 13, 37, 2, 189.91, 15.00),
    (14, 14, 6, 3, 197.91, 20.00),
    (15, 15, 15, 4, 209.90, 0.00),
    (16, 16, 24, 1, 799.90, 5.00),
    (17, 17, 33, 2, 3324.90, 10.00),
    (18, 18, 2, 3, 80.91, 15.00),
    (19, 19, 11, 4, 2099.89, 20.00),
    (20, 20, 20, 1, 349.90, 0.00),
    (21, 21, 29, 2, 303.90, 5.00),
    (22, 22, 38, 3, 152.91, 10.00),
    (23, 23, 7, 4, 304.39, 15.00),
    (24, 24, 16, 1, 599.90, 20.00),
    (25, 25, 25, 2, 474.90, 0.00),
    (26, 26, 34, 3, 809.91, 5.00),
    (27, 27, 3, 4, 346.39, 10.00),
    (28, 28, 12, 1, 3299.90, 15.00),
    (29, 29, 21, 2, 522.40, 20.00),
    (30, 30, 30, 3, 224.91, 0.00),
    (31, 31, 39, 4, 262.40, 5.00),
    (32, 32, 8, 1, 399.90, 10.00),
    (33, 33, 17, 2, 237.41, 15.00),
    (34, 34, 26, 3, 269.91, 20.00),
    (35, 35, 35, 4, 1469.90, 0.00),
    (36, 36, 4, 1, 899.90, 5.00),
    (37, 37, 13, 2, 113.91, 10.00),
    (38, 38, 22, 3, 206.91, 15.00),
    (39, 39, 31, 4, 3149.90, 20.00),
    (40, 40, 40, 1, 229.90, 0.00),
    (41, 41, 9, 2, 759.90, 5.00),
    (42, 42, 18, 3, 2429.91, 10.00),
    (43, 43, 27, 4, 734.89, 15.00),
    (44, 44, 36, 1, 159.90, 20.00),
    (45, 45, 5, 2, 427.40, 0.00),
    (46, 46, 14, 3, 62.91, 5.00),
    (47, 47, 23, 4, 199.40, 10.00),
    (48, 48, 32, 1, 2299.90, 15.00),
    (49, 49, 1, 2, 4369.90, 20.00),
    (50, 50, 10, 3, 161.91, 0.00);

-- ============================================================
-- ÍNDICES NAS CHAVES UTILIZADAS NOS JOINS
-- ============================================================

CREATE INDEX idx_vendas_cliente
    ON vendas (id_cliente);

CREATE INDEX idx_vendas_vendedor
    ON vendas (id_vendedor);

CREATE INDEX idx_itens_venda_venda
    ON itens_venda (id_venda);

CREATE INDEX idx_itens_venda_produto
    ON itens_venda (id_produto);
    

-- Missão 1 — Clientes sem compras
SELECT
    c.nome_cliente,
    c.cidade,
    COALESCE(SUM(v.valor_total), 0) AS valor_total_gasto
FROM clientes AS c

LEFT JOIN vendas AS v
    ON c.id_cliente = v.id_cliente

GROUP BY
    c.id_cliente,
    c.nome_cliente,
    c.cidade

ORDER BY
    c.nome_cliente;
    
-- Missão 2 — Produtos sem vendas
SELECT
    p.nome_produto,
    p.preco,
    COALESCE(SUM(iv.quantidade), 0) AS quantidade_total_vendida
FROM produtos AS p

LEFT JOIN itens_venda AS iv
    ON p.id_produto = iv.id_produto

GROUP BY
    p.id_produto,
    p.nome_produto,
    p.preco

ORDER BY
    p.nome_produto;
    
    
-- Missão 3 — Desempenho dos vendedores
SELECT
    vd.nome_vendedor,
    COUNT(v.id_venda) AS quantidade_vendas,
    COALESCE(SUM(v.valor_total), 0) AS faturamento_total
FROM vendedores AS vd

LEFT JOIN vendas AS v
    ON vd.id_vendedor = v.id_vendedor

GROUP BY
    vd.id_vendedor,
    vd.nome_vendedor

ORDER BY
    faturamento_total DESC;
    
-- Missão 4 — Classificação de clientes
WITH total_clientes AS (

    SELECT
        c.id_cliente,
        c.nome_cliente,
        c.cidade,
        COALESCE(SUM(v.valor_total), 0) AS total_gasto

    FROM clientes AS c

    LEFT JOIN vendas AS v
        ON c.id_cliente = v.id_cliente

    GROUP BY
        c.id_cliente,
        c.nome_cliente,
        c.cidade
)

SELECT
    tc.nome_cliente AS nome,
    tc.cidade,
    tc.total_gasto

FROM total_clientes AS tc

ORDER BY
    tc.total_gasto DESC;
    

-- Missão 5 — Clientes por faixa de renda
SELECT
    c.nome_cliente AS nome,
    c.cidade,
    c.renda
FROM clientes AS c

WHERE c.renda BETWEEN 3000 AND 6000

ORDER BY
    c.renda;
    

-- Missão 6 — Comparando formas de escrever intervalos
SELECT
    c.nome_cliente AS nome,
    c.cidade,
    c.renda
FROM clientes AS c

WHERE c.renda >= 3000
  AND c.renda <= 6000

ORDER BY
    c.renda;
    

-- Missão 7 — Período de vendas
SELECT
    v.id_venda AS codigo_venda,
    v.data_venda AS data,
    c.nome_cliente AS cliente,
    vd.nome_vendedor AS vendedor
FROM vendas AS v

INNER JOIN clientes AS c
    ON v.id_cliente = c.id_cliente

INNER JOIN vendedores AS vd
    ON v.id_vendedor = vd.id_vendedor

WHERE v.data_venda BETWEEN '2025-01-01' AND '2025-03-31'

ORDER BY
    v.data_venda;
    
    
-- Missão 8 — Produtos em determinada faixa de preço
SELECT
    p.nome_produto AS produto,
    p.preco
FROM produtos AS p

WHERE p.preco >= 100
  AND p.preco <= 250

ORDER BY
    p.preco;
    

-- Missão 9 — Campanha regional
SELECT
    c.nome_cliente,
    c.cidade
FROM clientes AS c

WHERE c.cidade IN (
    'Curitiba',
    'Colombo',
    'São José dos Pinhais'
)

ORDER BY
    c.cidade,
    c.nome_cliente;
    
-- Missão 10 — Produtos selecionados
SELECT
    p.id_produto AS codigo,
    p.nome_produto AS nome,
    p.preco
FROM produtos AS p

WHERE p.id_produto IN (1, 3, 5, 7)

ORDER BY
    p.id_produto;
    

-- Missão 11 — Vendas de vendedores selecionados
SELECT
    vd.nome_vendedor,
    v.id_venda AS codigo_venda,
    v.data_venda
FROM vendas AS v

INNER JOIN vendedores AS vd
    ON v.id_vendedor = vd.id_vendedor

WHERE vd.id_vendedor IN (1, 3, 5)

ORDER BY
    v.data_venda;
    

-- Missão 12 — Nome começando com A
SELECT
    c.nome_cliente AS nome,
    c.cidade
FROM clientes AS c

WHERE c.nome_cliente LIKE 'A%'

ORDER BY
    c.nome_cliente;
    

-- Missão 13 — Nome terminando com Silva
SELECT
    c.nome_cliente,
    c.cidade
FROM clientes AS c

WHERE c.nome_cliente LIKE '%Silva';

-- Missão 14 — Vendedor contendo Eduardo
SELECT
    vd.id_vendedor,
    vd.nome_vendedor,
    vd.setor
FROM vendedores AS vd

WHERE vd.nome_vendedor LIKE '%Eduardo%';


-- Missão 15 — Clientes que já compraram
SELECT
    c.id_cliente AS codigo,
    c.nome_cliente AS nome,
    c.cidade
FROM clientes AS c

WHERE EXISTS (

    SELECT 1
    FROM vendas AS v

    WHERE v.id_cliente = c.id_cliente
)

ORDER BY
    c.nome_cliente;
    

-- Missão 16 — Produtos que já foram vendidos
SELECT
    p.id_produto AS codigo,
    p.nome_produto AS nome,
    p.preco
FROM produtos AS p

WHERE EXISTS (

    SELECT 1
    FROM itens_venda AS iv

    WHERE iv.id_produto = p.id_produto
)

ORDER BY
    p.nome_produto;
    
    
-- Missão 17 — Vendedores ativos
SELECT
    vd.id_vendedor AS codigo_vendedor,
    vd.nome_vendedor
FROM vendedores AS vd

WHERE EXISTS (

    SELECT 1
    FROM vendas AS v

    WHERE v.id_vendedor = vd.id_vendedor
)

ORDER BY
    vd.nome_vendedor;
    
    
-- Missão 18 — Clientes que NÃO compraram
SELECT
    c.nome_cliente AS nome,
    c.cidade
FROM clientes AS c

WHERE NOT EXISTS (

    SELECT 1
    FROM vendas AS v

    WHERE v.id_cliente = c.id_cliente
)

ORDER BY
    c.nome_cliente;
    

-- Missão 19 — Clientes de alto potencial
SELECT
    c.nome_cliente AS cliente,
    c.cidade,
    c.renda
FROM clientes AS c

WHERE c.renda BETWEEN 5000 AND 8000

  AND c.cidade IN (
      'Curitiba',
      'Colombo',
      'São José dos Pinhais'
  )

  AND EXISTS (

      SELECT 1
      FROM vendas AS v

      WHERE v.id_cliente = c.id_cliente
  )

ORDER BY
    c.nome_cliente;
    
    
-- Missão 20 — Produtos estratégicos
SELECT
    p.nome_produto AS produto,
    p.preco,
    p.estoque
FROM produtos AS p

WHERE p.preco BETWEEN 100 AND 300

  AND p.estoque > 20

  AND EXISTS (

      SELECT 1
      FROM itens_venda AS iv

      WHERE iv.id_produto = p.id_produto
  )

ORDER BY
    p.preco;
    
