# Introdução ao SQL

## SQL vs NoSQL
O **SQL** tem estrutura rígida (tabelas), relações bem definidas e consultas padronizadas. 

Já o **NoSQL** tem estrutura flexível, escalabilidade horizontal, diferentes formatos de dados e alta performance. Oferece flexibilidade para dados não estruturados.

Em outras palavras, o SQL é uma linguagem relacional que armazena dados como tabelas, e essas tabelas se comunicam entre outras tabelas. Cada tabela tem sua chave primária (registro único).

Enquanto o NoSQL é não relacional, que armazena dados em formatos flexíveis (documentos, grafos ou pares chave-valor), possui esquema flexível ou é sem esquema, tem escalabilidade e é utilizado para BIG DATA.

## Bancos de Dados SQL Populares

- **MySQL:** Sistema de código aberto mais popular. Utilizado pelo Facebook, Twitter e YouTube.
- **SQLite:** Leve e embutido. Ideal para aplicativos móveis e pequenos projetos.
- **PostgreSQL:** Robusto e avançado. Suporta recursos complexos e análises sofisticadas.
- **SQL Server:** Solução da Microsoft. Integração nativa com produtos Windows e .Net.

Obs.: No curso utilizamos SQLite.

## Estrutura de Bancos SQL

- **Tabelas:** Armazenam dados organizados.
- **Linhas:** Entradas individuais na tabela. Cada linha contém um conjunto único de informações.
- **Colunas:** Definem o tipo de dado a ser armazenado. Estabelecem as categorias para organização das informações.

### Chaves Primárias e Estrangeiras

As chaves primárias são a forma de identificação de cada registro único na tabela (nunca se repete), não pode conter valores nulos, geralmente são números sequenciais.

**Exemplo:** Tabela: Clientes -> ID do Cliente (primária)

|Id_cliente| Nome| E-mail|
|   ----|   ----|   ----|
| 1 |   Ana |   ana@email.com|
| 2 |   Beatriz |   abeatriz@email.com|

Já as chaves estrangeiras estabelecem relacionamentos entre tabelas, conectando dados relacionados. Referenciam a chave primária de outra tabela, permitindo junção de tabelas em consultas e mantendo a integridade referencial.

**Exemplo:** Tabela: Pedidos -> ID do Pedido (primária) relacionado ao ID do Cliente (estrangeira)

|Id_pedido|Valor| Id_cliente|
|   ----|   ----|   ----|
| 101 |  R$ 10,00 |    1 |
| 102 |   R$ 10,00 |   2|
| 103 |   R$ 10,00 |   1|

### Relacionamento Entre Tabelas

- **Um para Um (1:1):** Cada registro de uma tabela se relaciona com apenas um registro de outra tabela. Exemplo: Uma pessoa tem um passaporte único.
- **Um para Muitos (1:N):** Um registro de uma tabela se relaciona com vários registros de outra tabela. Exemplo: Um departamento tem vários funcionários.
- **Muitos para Muitos (N:N):** Vários registros de uma tabela se relacionam com vários registros de outra tabela. Exemplo: Alunos matriculados em disciplinas.

---

## Manipulação de Dados com SQL

Utilizando o **SQLiteOnline**, podemos simular que a tabela do exercício Excel é de um sistema de produto e consultar os dados dentro dela.

### Exemplo 1: Selecionando todos os dados da tabela

```sql
SELECT * FROM vendas;
```

### Exemplo 2: Selecionando colunas específicas e ordenando os dados
```sql
SELECT id_cliente AS CLIENTE, estado, produto, quantidade FROM vendas
ORDER BY quantidade DESC
LIMIT 5;
```

Aqui, a consulta traz as colunas selecionadas, renomeia o campo id_cliente para CLIENTE, ordena os resultados pela quantidade de forma decrescente e limita a 5 registros.

### Exemplo 3: Filtrando dados da tabela produtos
```sql
SELECT * FROM produtos
WHERE categoria = 'Alimentos';
```

Este comando seleciona todos os produtos da categoria "Alimentos".

### Operadores lógicos

- AND: Filtra os dados onde ambas as condições são verdadeiras.
- OR: Filtra os dados onde pelo menos uma das condições seja verdadeira.
- NOT: Exclui os dados que atendem a uma condição específica.
- IN: Filtra por várias opções, permitindo especificar uma lista de valores.
- BETWEEN: Filtra dados entre dois valores específicos.

### Trabalhando com múltiplas tabelas

Exemplo de junção de três tabelas: vendas, produtos, e clientes.

```sql
SELECT v.data_venda, v.nome_cliente, v.estado,
       p.nome_produto, p.categoria, v.quantidade,
       p.preco_unitario, v.total_venda,
       c.email, c.celular, c.idade
FROM vendas v
INNER JOIN produtos p ON v.produto = p.nome_produto
INNER JOIN clientes c ON v.nome_cliente = c.nome_cliente
ORDER BY v.data_venda DESC;
```

Neste exemplo, estamos selecionando dados de três tabelas relacionadas e ordenando pela data da venda.

### Filtros adicionais
```sql
SELECT v.data_venda, v.nome_cliente, v.estado,
       p.nome_produto, p.categoria, v.quantidade,
       p.preco_unitario, v.total_venda,
       c.email, c.celular, c.idade
FROM vendas v
INNER JOIN produtos p ON v.produto = p.nome_produto
INNER JOIN clientes c ON v.nome_cliente = c.nome_cliente
WHERE c.idade > 40
ORDER BY v.data_venda DESC;
```

Este comando adiciona um filtro para mostrar apenas os registros onde a idade do cliente é maior que 40.

### Left Join
```sql
SELECT *, 
    CASE WHEN total_venda > 10000 THEN 'VIP'
    ELSE 'NÃO VIP' END AS Status_cliente
FROM vendas;
```

Aqui, estamos utilizando uma junção condicional que marca os clientes com total_venda superior a R$ 10.000 como VIP.

## Principais Comandos de SQL

| Comando        | Descrição                                                                 |
|-----------------|---------------------------------------------------------------------------|
| **SELECT**      | Seleciona as colunas desejadas                                           |
| **FROM**        | Define a tabela de onde os dados são extraídos                            |
| **WHERE**       | Filtra os dados com condições específicas                                |
| **JOIN**        | Junta dados de diferentes tabelas                                        |
| **INNER JOIN**  | Retorna apenas os registros que têm correspondência em ambas as tabelas  |
| **LEFT JOIN**   | Retorna todos os registros da tabela à esquerda e os correspondentes à direita |
| **COUNT**       | Conta o número de registros                                             |
| **SUM**         | Soma os valores de uma coluna                                            |
| **AVG**         | Calcula a média dos valores de uma coluna                                |
| **DISTINCT**    | Remove duplicados                                                        |
| **AS**          | Renomeia uma coluna ou tabela                                            |
| **ORDER BY**    | Ordena os resultados por uma ou mais colunas                              |
| **DESC/ASC**    | Ordenação Decrescente ou Crescente                                       |
| **LIMIT**       | Limita o número de linhas retornadas                                      |
| **IN**          | Filtra dados com base em uma lista de valores                            |
| **BETWEEN**     | Filtra dados entre dois valores                                          |
| **AND**         | Filtra dados onde ambas as condições são verdadeiras                     |
| **OR**          | Filtra dados onde pelo menos uma das condições seja verdadeira           |
| **CASE WHEN**   | Condicional tipo IF-ELSE para avaliar e retornar diferentes valores      |
