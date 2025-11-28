-- Arquivo SQL para SQLite - Incremento de dados dos clientes
-- Criação da tabela de clientes e inserção dos dados complementares

-- Criação da tabela de clientes
CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY,
    nome_cliente TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    celular TEXT NOT NULL,
    idade INTEGER NOT NULL,
    data_cadastro DATE NOT NULL
);

-- Inserção dos dados dos clientes (extraídos da tabela de vendas)
INSERT INTO clientes (id_cliente, nome_cliente, email, celular, idade, data_cadastro) VALUES
(5627, 'Brenda Monteiro', 'brenda.monteiro@email.com', '(51) 99876-5432', 28, '2024-08-15'),
(1368, 'Nathan Mendes', 'nathan.mendes@email.com', '(41) 98765-4321', 35, '2024-09-22'),
(3170, 'Dra. Mariana da Paz', 'mariana.dapaz@email.com', '(71) 97654-3210', 42, '2024-07-10'),
(7689, 'Pedro das Neves', 'pedro.neves@email.com', '(41) 96543-2109', 31, '2024-10-05'),
(1722, 'Dr. João Miguel Oliveira', 'joao.oliveira@email.com', '(11) 95432-1098', 45, '2024-06-18'),
(1825, 'Sr. Breno Farias', 'breno.farias@email.com', '(11) 94321-0987', 38, '2024-11-02'),
(5689, 'Emanuel Costela', 'emanuel.costela@email.com', '(21) 93210-9876', 29, '2024-08-30'),
(9320, 'Marcela Rezende', 'marcela.rezende@email.com', '(71) 92109-8765', 33, '2024-09-14'),
(3027, 'Srta. Brenda Cunha', 'brenda.cunha@email.com', '(71) 91098-7654', 26, '2024-10-28'),
(7359, 'Alícia da Cunha', 'alicia.dacunha@email.com', '(21) 90987-6543', 24, '2024-07-25'),
(2585, 'Davi Luiz da Cunha', 'davi.cunha@email.com', '(51) 89876-5432', 32, '2024-11-16'),
(7884, 'Camila Cardoso', 'camila.cardoso@email.com', '(51) 88765-4321', 27, '2024-06-08'),
(7981, 'Dr. Anthony Pires', 'anthony.pires@email.com', '(81) 87654-3210', 48, '2024-09-03'),
(1322, 'Vitor Ribeiro', 'vitor.ribeiro@email.com', '(51) 86543-2109', 30, '2024-08-07'),
(3537, 'Maitê da Cruz', 'maite.dacruz@email.com', '(11) 85432-1098', 25, '2024-10-12'),
(2982, 'Maria Clara Caldeira', 'clara.caldeira@email.com', '(71) 84321-0987', 34, '2024-07-19'),
(5593, 'Sofia Mendes', 'sofia.mendes@email.com', '(11) 83210-9876', 23, '2024-11-24'),
(1305, 'João Felipe Cardoso', 'felipe.cardoso@email.com', '(71) 82109-8765', 37, '2024-06-15'),
(6303, 'Maria Fernanda Jesus', 'fernanda.jesus@email.com', '(21) 81098-7654', 29, '2024-09-08'),
(6700, 'Alana Peixoto', 'alana.peixoto@email.com', '(71) 80987-6543', 31, '2024-08-22'),
(4907, 'Dra. Catarina Castro', 'catarina.castro@email.com', '(81) 79876-5432', 41, '2024-10-06'),
(5746, 'Thiago Souza', 'thiago.souza@email.com', '(51) 78765-4321', 36, '2024-07-13'),
(1307, 'João Miguel Pires', 'miguel.pires@email.com', '(11) 77654-3210', 39, '2024-11-01'),
(6638, 'Rafael Alves', 'rafael.alves@email.com', '(41) 76543-2109', 28, '2024-06-27'),
(7698, 'Eduarda Teixeira', 'eduarda.teixeira@email.com', '(51) 75432-1098', 26, '2024-09-18'),
(1583, 'Dr. Caio Silveira', 'caio.silveira@email.com', '(41) 74321-0987', 44, '2024-08-04'),
(8542, 'Otávio Duarte', 'otavio.duarte@email.com', '(51) 73210-9876', 33, '2024-10-20'),
(3301, 'Lívia Caldeira', 'livia.caldeira@email.com', '(41) 72109-8765', 27, '2024-07-02'),
(2628, 'Sra. Isabella Porto', 'isabella.porto@email.com', '(31) 71098-7654', 40, '2024-11-09'),
(7453, 'Lucas Teixeira', 'lucas.teixeira@email.com', '(11) 70987-6543', 35, '2024-06-21');

-- Criação de índices para melhor performance
CREATE INDEX idx_clientes_email ON clientes(email);
CREATE INDEX idx_clientes_nome ON clientes(nome_cliente);
CREATE INDEX idx_clientes_idade ON clientes(idade);
CREATE INDEX idx_clientes_data_cadastro ON clientes(data_cadastro);

-- Consultas de exemplo para testar a tabela de clientes

-- 1. Listar todos os clientes ordenados por nome
SELECT id_cliente, nome_cliente, email, celular, idade, data_cadastro
FROM clientes 
ORDER BY nome_cliente;

-- 2. Clientes por faixa etária
SELECT 
    CASE 
        WHEN idade < 25 THEN '18-24 anos'
        WHEN idade < 35 THEN '25-34 anos'
        WHEN idade < 45 THEN '35-44 anos'
        ELSE '45+ anos'
    END as faixa_etaria,
    COUNT(*) as total_clientes
FROM clientes 
GROUP BY 
    CASE 
        WHEN idade < 25 THEN '18-24 anos'
        WHEN idade < 35 THEN '25-34 anos'
        WHEN idade < 45 THEN '35-44 anos'
        ELSE '45+ anos'
    END
ORDER BY total_clientes DESC;

-- 3. Clientes cadastrados por mês
SELECT 
    strftime('%Y-%m', data_cadastro) as mes_cadastro,
    COUNT(*) as novos_clientes
FROM clientes 
GROUP BY strftime('%Y-%m', data_cadastro)
ORDER BY mes_cadastro;

-- 4. Idade média dos clientes
SELECT 
    ROUND(AVG(idade), 1) as idade_media,
    MIN(idade) as idade_minima,
    MAX(idade) as idade_maxima
FROM clientes;

-- 5. Buscar cliente por email
SELECT id_cliente, nome_cliente, celular, idade
FROM clientes 
WHERE email = 'brenda.monteiro@email.com';

-- Query para relacionar dados de clientes com vendas
-- (Esta query pode ser executada após criar ambas as tabelas)
/*
SELECT 
    c.nome_cliente,
    c.email,
    c.celular,
    c.idade,
    COUNT(v.id) as total_compras,
    SUM(v.total_venda) as valor_total_compras,
    ROUND(AVG(v.total_venda), 2) as ticket_medio
FROM clientes c
LEFT JOIN vendas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nome_cliente, c.email, c.celular, c.idade
ORDER BY valor_total_compras DESC;
*/