-- Arquivo SQL para SQLite - Sistema de Vendas da Empresa
-- Criação da tabela e inserção de 30 registros de amostra

-- Criação da tabela
CREATE TABLE vendas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    data_venda DATE NOT NULL,
    id_cliente INTEGER NOT NULL,
    nome_cliente TEXT NOT NULL,
    estado TEXT NOT NULL,
    categoria TEXT NOT NULL,
    produto TEXT NOT NULL,
    quantidade INTEGER NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    total_venda DECIMAL(10,2) NOT NULL,
    ano INTEGER NOT NULL,
    mes INTEGER NOT NULL,
    dia INTEGER NOT NULL,
    dia_semana INTEGER NOT NULL,
    lucro DECIMAL(10,2) NOT NULL,
    gastos DECIMAL(10,2) NOT NULL
);

-- Inserção dos dados de amostra (30 registros)
INSERT INTO vendas (data_venda, id_cliente, nome_cliente, estado, categoria, produto, quantidade, preco_unitario, total_venda, ano, mes, dia, dia_semana, lucro, gastos) VALUES
('2025-02-14', 5627, 'Brenda Monteiro', 'RS', 'Eletrônicos', 'Tablet', 3, 390.42, 1171.26, 2025, 2, 14, 6, 468.50, 117.13),
('2025-04-19', 1368, 'Nathan Mendes', 'PR', 'Alimentos', 'Café', 2, 1793.52, 3587.04, 2025, 4, 19, 7, 1434.82, 358.70),
('2025-05-11', 3170, 'Dra. Mariana da Paz', 'BA', 'Alimentos', 'Leite', 9, 1610.73, 14496.57, 2025, 5, 11, 1, 5798.63, 1449.66),
('2025-01-13', 7689, 'Pedro das Neves', 'PR', 'Brinquedos', 'Jogo de Tabuleiro', 8, 2391.07, 19128.56, 2025, 1, 13, 2, 7651.42, 1912.86),
('2025-01-23', 1722, 'Dr. João Miguel Oliveira', 'SP', 'Brinquedos', 'Bola', 8, 235.34, 1882.72, 2025, 1, 23, 5, 753.09, 188.27),
('2025-04-07', 1825, 'Sr. Breno Farias', 'SP', 'Eletrônicos', 'Monitor', 2, 1489.84, 2979.68, 2025, 4, 7, 2, 1191.87, 297.97),
('2025-06-08', 5689, 'Emanuel Costela', 'RJ', 'Eletrônicos', 'Notebook', 8, 481.94, 3855.52, 2025, 6, 8, 1, 1542.21, 385.55),
('2025-03-14', 9320, 'Marcela Rezende', 'BA', 'Alimentos', 'Feijão', 7, 2406.94, 16848.58, 2025, 3, 14, 6, 6739.43, 1684.86),
('2025-04-18', 3027, 'Srta. Brenda Cunha', 'BA', 'Brinquedos', 'Quebra-Cabeça', 1, 2192.52, 2192.52, 2025, 4, 18, 6, 877.01, 219.25),
('2025-02-02', 7359, 'Alícia da Cunha', 'RJ', 'Eletrônicos', 'Monitor', 8, 1751.46, 14011.68, 2025, 2, 2, 1, 5604.67, 1401.17),
('2025-02-18', 2585, 'Davi Luiz da Cunha', 'RS', 'Alimentos', 'Café', 2, 1189.63, 2379.26, 2025, 2, 18, 3, 951.70, 237.93),
('2025-06-02', 7884, 'Camila Cardoso', 'RS', 'Alimentos', 'Café', 1, 1733.16, 1733.16, 2025, 6, 2, 2, 693.26, 173.32),
('2025-01-20', 7981, 'Dr. Anthony Pires', 'PE', 'Brinquedos', 'Jogo de Tabuleiro', 4, 2972.09, 11888.36, 2025, 1, 20, 2, 4755.34, 1188.84),
('2025-01-09', 1322, 'Vitor Ribeiro', 'RS', 'Alimentos', 'Leite', 5, 1070.30, 5351.50, 2025, 1, 9, 5, 2140.60, 535.15),
('2025-05-20', 3537, 'Maitê da Cruz', 'SP', 'Vestuário', 'Calça Jeans', 1, 1263.00, 1263.00, 2025, 5, 20, 3, 505.20, 126.30),
('2025-02-09', 2982, 'Maria Clara Caldeira', 'BA', 'Eletrônicos', 'Fone de Ouvido', 2, 2008.93, 4017.86, 2025, 2, 9, 1, 1607.14, 401.79),
('2024-12-25', 5593, 'Sofia Mendes', 'SP', 'Vestuário', 'Jaqueta', 5, 234.04, 1170.20, 2024, 12, 25, 4, 468.08, 117.02),
('2025-04-10', 1305, 'João Felipe Cardoso', 'BA', 'Brinquedos', 'Carrinho', 8, 624.63, 4997.04, 2025, 4, 10, 5, 1998.82, 499.70),
('2025-02-22', 6303, 'Maria Fernanda Jesus', 'RJ', 'Eletrônicos', 'Fone de Ouvido', 4, 2422.84, 9691.36, 2025, 2, 22, 7, 3876.54, 969.14),
('2025-04-04', 6700, 'Alana Peixoto', 'BA', 'Eletrônicos', 'Fone de Ouvido', 7, 2205.46, 15438.22, 2025, 4, 4, 6, 6175.29, 1543.82),
('2025-04-04', 4907, 'Dra. Catarina Castro', 'PE', 'Eletrônicos', 'Tablet', 10, 2262.74, 22627.40, 2025, 4, 4, 6, 9050.96, 2262.74),
('2025-01-05', 5746, 'Thiago Souza', 'RS', 'Móveis', 'Cadeira', 3, 2806.52, 8419.56, 2025, 1, 5, 1, 3367.82, 841.96),
('2025-04-26', 1307, 'João Miguel Pires', 'SP', 'Alimentos', 'Leite', 2, 2625.24, 5250.48, 2025, 4, 26, 7, 2100.19, 525.05),
('2025-03-13', 6638, 'Rafael Alves', 'PR', 'Alimentos', 'Pão', 8, 2277.06, 18216.48, 2025, 3, 13, 5, 7286.59, 1821.65),
('2025-02-04', 7698, 'Eduarda Teixeira', 'RS', 'Eletrônicos', 'Monitor', 4, 2315.37, 9261.48, 2025, 2, 4, 3, 3704.59, 926.15),
('2025-01-18', 1583, 'Dr. Caio Silveira', 'PR', 'Vestuário', 'Calça Jeans', 4, 2912.84, 11651.36, 2025, 1, 18, 7, 4660.54, 1165.14),
('2025-05-08', 8542, 'Otávio Duarte', 'RS', 'Alimentos', 'Leite', 1, 2541.62, 2541.62, 2025, 5, 8, 5, 1016.65, 254.16),
('2025-01-27', 3301, 'Lívia Caldeira', 'PR', 'Vestuário', 'Camiseta', 7, 104.92, 734.44, 2025, 1, 27, 2, 293.78, 73.44),
('2025-02-28', 2628, 'Sra. Isabella Porto', 'MG', 'Alimentos', 'Arroz', 7, 1970.61, 13794.27, 2025, 2, 28, 6, 5517.71, 1379.43),
('2024-12-23', 7453, 'Lucas Teixeira', 'SP', 'Móveis', 'Sofá', 10, 1058.38, 10583.80, 2024, 12, 23, 2, 4233.52, 1058.38);

-- Criação de índices para melhor performance
CREATE INDEX idx_vendas_data ON vendas(data_venda);
CREATE INDEX idx_vendas_cliente ON vendas(id_cliente);
CREATE INDEX idx_vendas_estado ON vendas(estado);
CREATE INDEX idx_vendas_categoria ON vendas(categoria);
CREATE INDEX idx_vendas_produto ON vendas(produto);

-- Consultas de exemplo para testar o banco

-- 1. Total de vendas por estado
SELECT estado, COUNT(*) as total_vendas, SUM(total_venda) as valor_total
FROM vendas 
GROUP BY estado 
ORDER BY valor_total DESC;

-- 2. Produtos mais vendidos
SELECT produto, SUM(quantidade) as quantidade_total, COUNT(*) as num_vendas
FROM vendas 
GROUP BY produto 
ORDER BY quantidade_total DESC;

-- 3. Vendas por categoria
SELECT categoria, COUNT(*) as total_vendas, SUM(total_venda) as faturamento
FROM vendas 
GROUP BY categoria 
ORDER BY faturamento DESC;

-- 4. Top 10 clientes por valor de compra
SELECT nome_cliente, SUM(total_venda) as valor_total, COUNT(*) as num_compras
FROM vendas 
GROUP BY id_cliente, nome_cliente 
ORDER BY valor_total DESC 
LIMIT 10;

-- 5. Vendas por mês
SELECT ano, mes, COUNT(*) as total_vendas, SUM(total_venda) as faturamento_mensal
FROM vendas 
GROUP BY ano, mes 
ORDER BY ano, mes;