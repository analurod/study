-- Arquivo SQL para SQLite - Tabela PRODUTOS para exercício de relacionamento
-- Baseada nos produtos existentes na tabela VENDAS

-- Criação da tabela PRODUTOS
CREATE TABLE produtos (
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_produto TEXT NOT NULL UNIQUE,
    categoria TEXT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    quantidade_estoque INTEGER NOT NULL,
    estoque_minimo INTEGER NOT NULL,
    localizacao_estoque TEXT NOT NULL,
    setor_estoque TEXT NOT NULL,
    margem_lucro DECIMAL(5,2) NOT NULL, -- Percentual de margem de lucro
    custo_armazenagem DECIMAL(8,2) NOT NULL, -- Custo mensal de armazenagem
    fornecedor TEXT NOT NULL,
    data_ultima_entrada DATE NOT NULL,
    status_produto TEXT NOT NULL CHECK (status_produto IN ('Ativo', 'Inativo', 'Descontinuado')),
    peso_kg DECIMAL(6,2) NOT NULL,
    dimensoes TEXT NOT NULL -- formato: "LxAxP em cm"
);

-- Inserção dos produtos únicos baseados na tabela VENDAS
-- Mantendo exatamente os mesmos nomes, categorias e preços unitários

INSERT INTO produtos (nome_produto, categoria, preco_unitario, quantidade_estoque, estoque_minimo, localizacao_estoque, setor_estoque, margem_lucro, custo_armazenagem, fornecedor, data_ultima_entrada, status_produto, peso_kg, dimensoes) VALUES

-- Eletrônicos
('Tablet', 'Eletrônicos', 390.42, 45, 10, 'A1-B2-C3', 'Eletrônicos', 40.00, 25.50, 'TechSupply Ltda', '2025-02-10', 'Ativo', 0.65, '25x18x1 cm'),
('Monitor', 'Eletrônicos', 1489.84, 28, 5, 'A2-B1-C4', 'Eletrônicos', 25.00, 45.80, 'DisplayTech', '2025-01-28', 'Ativo', 5.2, '61x45x18 cm'),
('Notebook', 'Eletrônicos', 481.94, 15, 3, 'A1-B3-C2', 'Eletrônicos', 35.00, 32.40, 'CompuWorld', '2025-06-05', 'Ativo', 2.1, '35x25x2 cm'),
('Fone de Ouvido', 'Eletrônicos', 2008.93, 67, 15, 'A3-B2-C1', 'Eletrônicos', 50.00, 8.75, 'AudioMax', '2025-02-15', 'Ativo', 0.3, '20x18x8 cm'),

-- Alimentos
('Café', 'Alimentos', 1793.52, 120, 20, 'B1-A2-C1', 'Alimentos', 30.00, 15.60, 'Café Premium Ltda', '2025-06-01', 'Ativo', 1.0, '15x10x25 cm'),
('Leite', 'Alimentos', 1610.73, 200, 30, 'B2-A1-C2', 'Alimentos', 25.00, 12.30, 'Laticínios São Paulo', '2025-05-25', 'Ativo', 1.03, '8x8x20 cm'),
('Feijão', 'Alimentos', 2406.94, 85, 15, 'B1-A3-C1', 'Alimentos', 28.00, 18.90, 'Grãos & Cereais', '2025-03-10', 'Ativo', 1.0, '12x8x25 cm'),
('Pão', 'Alimentos', 2277.06, 150, 25, 'B3-A1-C1', 'Alimentos', 45.00, 22.40, 'Padaria Industrial', '2025-03-12', 'Ativo', 0.5, '30x15x8 cm'),
('Arroz', 'Alimentos', 1970.61, 180, 25, 'B2-A2-C3', 'Alimentos', 32.00, 16.80, 'Cereais do Sul', '2025-02-26', 'Ativo', 5.0, '15x25x35 cm'),

-- Brinquedos
('Jogo de Tabuleiro', 'Brinquedos', 2391.07, 35, 8, 'C1-A1-B2', 'Brinquedos', 42.00, 12.80, 'Diversão Total', '2025-01-15', 'Ativo', 1.8, '40x30x8 cm'),
('Bola', 'Brinquedos', 235.34, 95, 20, 'C2-A2-B1', 'Brinquedos', 38.00, 5.20, 'Esportes & Lazer', '2025-01-20', 'Ativo', 0.4, '22x22x22 cm'),
('Quebra-Cabeça', 'Brinquedos', 2192.52, 42, 10, 'C1-A3-B1', 'Brinquedos', 35.00, 9.60, 'Puzzles Incríveis', '2025-04-16', 'Ativo', 0.8, '35x25x5 cm'),
('Carrinho', 'Brinquedos', 624.63, 58, 12, 'C3-A1-B2', 'Brinquedos', 40.00, 8.40, 'Carrinhos Fantásticos', '2025-04-08', 'Ativo', 0.6, '25x15x12 cm'),

-- Vestuário
('Calça Jeans', 'Vestuário', 1263.00, 75, 15, 'D1-A2-B1', 'Vestuário', 55.00, 18.50, 'Moda Brasileira', '2025-05-18', 'Ativo', 0.8, '30x40x5 cm'),
('Jaqueta', 'Vestuário', 234.04, 45, 10, 'D2-A1-B2', 'Vestuário', 60.00, 22.30, 'Roupas de Inverno', '2024-12-20', 'Ativo', 1.2, '35x45x8 cm'),
('Camiseta', 'Vestuário', 104.92, 125, 25, 'D1-A3-B1', 'Vestuário', 65.00, 12.80, 'Básicos Fashion', '2025-01-25', 'Ativo', 0.3, '25x35x2 cm'),

-- Móveis
('Cadeira', 'Móveis', 2806.52, 18, 5, 'E1-A1-B1', 'Móveis', 45.00, 85.40, 'Móveis Conforto', '2025-01-02', 'Ativo', 12.5, '60x60x90 cm'),
('Sofá', 'Móveis', 1058.38, 8, 2, 'E2-A1-B1', 'Móveis', 48.00, 125.60, 'Estofados Premium', '2024-12-20', 'Ativo', 45.0, '200x90x85 cm');

-- Criação de índices para melhor performance
CREATE INDEX idx_produtos_categoria ON produtos(categoria);
CREATE INDEX idx_produtos_nome ON produtos(nome_produto);
CREATE INDEX idx_produtos_preco ON produtos(preco_unitario);
CREATE INDEX idx_produtos_estoque ON produtos(quantidade_estoque);
CREATE INDEX idx_produtos_localizacao ON produtos(localizacao_estoque);

-- Consultas de exemplo para relacionamento com a tabela VENDAS

-- 1. Verificar produtos com estoque baixo
SELECT nome_produto, categoria, quantidade_estoque, estoque_minimo,
       CASE 
           WHEN quantidade_estoque <= estoque_minimo THEN 'CRÍTICO'
           WHEN quantidade_estoque <= (estoque_minimo * 1.5) THEN 'BAIXO'
           ELSE 'NORMAL'
       END as status_estoque
FROM produtos
ORDER BY quantidade_estoque;

-- 2. Produtos por categoria com informações de armazenagem
SELECT categoria, 
       COUNT(*) as total_produtos,
       AVG(margem_lucro) as margem_media,
       SUM(custo_armazenagem) as custo_total_armazenagem
FROM produtos
GROUP BY categoria
ORDER BY custo_total_armazenagem DESC;

-- 3. Produtos mais lucrativos (por margem)
SELECT nome_produto, categoria, preco_unitario, margem_lucro,
       ROUND(preco_unitario * (margem_lucro/100), 2) as lucro_unitario
FROM produtos
ORDER BY margem_lucro DESC;

-- 4. Consulta de relacionamento: Vendas x Produtos (exemplo de JOIN)
-- Esta consulta relaciona as duas tabelas
/*
SELECT v.data_venda, v.nome_cliente, v.estado, 
       p.nome_produto, p.categoria, v.quantidade,
       p.preco_unitario, v.total_venda,
       p.quantidade_estoque, p.localizacao_estoque
FROM vendas v
INNER JOIN produtos p ON v.produto = p.nome_produto
ORDER BY v.data_venda DESC;
*/

-- 5. Análise de estoque vs vendas
/*
SELECT p.nome_produto, p.categoria,
       p.quantidade_estoque,
       COALESCE(SUM(v.quantidade), 0) as total_vendido,
       COUNT(v.id) as num_vendas
FROM produtos p
LEFT JOIN vendas v ON p.nome_produto = v.produto
GROUP BY p.id_produto, p.nome_produto, p.categoria
ORDER BY total_vendido DESC;
*/