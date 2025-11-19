# Introdução à dados

## O que são dados? 
São a matéria-prima que, quando processada e contextualizada, transforma-se em informação útil para a tomada de decisões.

- **Números:** Valores numericos como idade, temperatura, preço. Podem ser inteiros ou decimais.
- **Textos:** Palavras, frases, parágrafos. Incluem noes, comentários e descrições.
- **Imagens:** Fotografias, gráficos ou desenhos. Contém informações visuais valiosas.
- **Sons:** Gravações, músicas, efeitos sonoros. Registram informações.

## Dados VS Informações
**Dados brutos** são fatos isolados sem contexto, não possuem significado claro por si só.
**Informações** são os dados contextualizados, possuem significado e valor para a tomada de decisões.

- Processamento: é o processo de limpeza, organização e análise dos dados brutos. Transformação estruturada de dados em informações.

## Ciclo de vida dos Dados
1) **Coleta:** Obtenção de dados de diversas fontes
2) **Armazenamento:** Organização dos dados em bancos estruturados ou não-esturutrados.
3) **Processamento:** Limpeza e tranformação dos dados brutos em formatos utilizavéis.
4) **Análise e Visualização:** Extração de *insights* e criação de representações visuais dos resultados.
5) **Tomada de decisão:** Utilização dos *insights* obtidos para orientar ações estratégicas e operacionais.

## Aplicações práticas de Dados
- **Negócios:** Análise de vendas, segmentação de clientes, previsão de demanda, otimização de preços e detecção de fraudes em transações.
- **Saúde:** Diagnóstico assistido por computador e medicina personalizada, monitoramento de epidemias e gestão hospitalar.
- **Logística:** Otimização de rotas, gestão de estoques, rastreamento em tempo real e previsão de atrasos.

## Habilidades e Ferramentas Essenciais
### Programação
- Python
- R
- SQL

### Estatística
- Probabilidade
- Inferência
- Regressão

### Ferramentas
- Excel/Sheets
- Tableau/Power BI
- Jupyter Notebooks

## Pipeline de Dados
**Pipeline de dados* funciona como uma linha de produção, em que cada etapa adiciona valor aos dados brutos.

### Etapas Principais do Pipeline
**ETL - Extract Transform Load** 

1) **Extração:** Coleta de dados de múltiplas fontes
2) **Transformação:** Limpeza, padronização e enriquecimento dos dados. Conversão para formatos adequados para análise.
3) **Armazenamento:** Persistência em bancos de dados, data lakes ou data warehouse. Estruturação para facilitar consultas.
4) **Disponibilidade:** Acesso aos dados para usuários finais. Visualizações, APIs ou ferramentas de BI.

Exemplo lúdico: Preparo de um bolo. Primeiro pega os ingredientes, depois cozinha o bolo e depois guarda o bolo. Entrega o bolo pronto para o cliente

**ELT - Extract Load Transform** 
Semelhante ao ETL porém invertemos as etapas de armazenamento e transformação. Coleto todas as informações, guardo em algum local e depois transformo e disponibilizo.

1) **Extração:** Coleta de dados de múltiplas fontes
2) **Armazenamento:** Persistência em bancos de dados, data lakes ou data warehouse. Estruturação para facilitar consultas.
3) **Transformação:** Limpeza, padronização e enriquecimento dos dados. Conversão para formatos adequados para análise.
4) **Disponibilidade:** Acesso aos dados para usuários finais. Visualizações, APIs ou ferramentas de BI.

Exemplo lúdico: Preparo de um bolo. Primeiro pega os ingredientes, guarda os ingredientes (massa) e depois cozinha o bolo. Da a possibilidade do cliente fazer o bolo, vende a massa para ele.

### Camadas do Pipeline de Dados
- **SOR - Sistema de Registros:** Fonte original, na forma bruta e integra. Exemplo: Banco de dados transacionais, sistemas operacionais, fontes externas.
- **SOT - Sistema de Transformação:** Dados limpos, padronizados e integrados a partir da camada SOR. Exemplo: ETL/ELT, Data lakes, Processamento em tempo real.
- **SPEC - Sistema de Consumo:**  Dados modelados para o consumo final, específicospor área ou finalidade. Exemplo: Data marts, Ferramentas de BI, APIs e serviços.

**Ferramentas Populares**
- Alteryx: Plataforma de análise de dados sem código. Oferece interface visual para preparação e transformação de dados.
- Python: Linguagem versátil com bibliotecas poderosas como Pandas, NumPy e Apache Spark para processamento de dados.
- AWS Glue: Serviço de ETL gerenciado na nuvem. Facilita a descoberta, preparação e integração de dados para análise.

## Conceitos de Big Data
O **Big Data** trabalha com quantidades massivas de informações, frequentement medidas em petabytes (1 petabyte = 1.000.000 gigabytes).

**Análise Preditiva:** Equipes analisam petabytes de dados históricos para prever falhas mecânicas e otimizar estratégias de corrida em diferentes condições climáticas.

### Os 5V do Big Data
1) Volume: Quantidades massivas de dados gerados continuamente.
2) Velocidade: Rapidez na geração e necessidade e processamento imediato.
3) Variedade: Diferentes formatos (estruturados, semiestruturados e não estruturados)
4) Veracidade: Confiabilidade e precisão dos dados coletaods.
5) Valor: Cpacidade de extrair *insights* úteis dos dados.

### Dados Tradicionais VS Big Data
**Dados tradicionais** tem menor volume e são mais fáceis de gerenciar, com estrutura fixa e predefinida. Pode ser armazenado em bancos relacionais com processamento sequencial. Análise retrospectiva.

**Big Data** tem um grande e crescente volume de dados, estruturas variadas e flexíveis. Armazenados em sistemas distribuidos, com processamento paralelo. Análise preditiva em tempo real.

### Ferramentas para Volumes Menores
No dia a dia corporativo, muitas empresas ainda utilizam ferramentas tradicionais para gerenciar volumes menores de dados *on-premises*.

- **Microsoft Excel:** Planilha para análises básicas, fácil manipulação de dados tabulares, ideal para relatórios e cálculos simples.
- **Micrososft Acess:** Banco de dados relacional simplificado, capacidade para consultas estruturadas.
- **Power BI:** Visualizações dinâmicas e dashboardas, conexão com múltiplas fontes de dados.

### Aplicações de Big Data
- **Streaming de Vídeo:** Plataformas como Netflix analisam preferências de milhoes de usuários. Recomendam conteúdo personalizado. Otimizam qualidade de  transmissão em tempo real.
- **IOT - Internet das Coisas:** Sensores em dispositivos coletam dados constantemente. Monitoram desde eletrodomésticos até cidades inteiras. Permitem manutenção preditiva e automação.
- **Redes Sociais:** Analisam comportamentos e preferências de bilhões de usuários. Identificam tendências e sentimentos. Personalizam feeds e anúncios.
- **Logs de Aplicativos:** Registram interações e erros em sistemas. Permitem detecção de falhas e ataques. Otimizam desempenho e experiência do usuário.

## Data Lake, Data Warehouse, Data Mark
**Data Lake** é a primeira camada de repositório de dados brutos (pdf, json,csv, imagens,vídeos) sem nenhum tratamento armazenados em um sistema, como o *Hadoop*, *Amazon S3* ou *Azure*. Possui baixo custo de armazenamento, ideal para grandes volumes de dados variados.

**Data Warehouse** é um "pedaço do Data Lake". São os dados do Data Lake após uma limpeza e padronização. Utilizados para fazer as análises referenciadas (foco em BI e dashboards).

**Data Mart** é um subconjunto do DW com foco em um área específica, para uso departamental. Geralmente com uma resposta rápida (menor tempo de processamento) e independência analítica (autonomia para as áreas de negócio).

| Características | Data Lake | Data Warehouse | Data Mart |
|-----------------|-----------|----------------|-----------|
| **Tipos de Dados** | Brutos e variados | Estruturados | Estruturados |
| **Custo** | Baixo | Médio/Alto | Médio |
| **Público Alvo** | Cientistas de Dados | BI, analistas | áreas específicas |
| **Preparação** | Nenhuma | Alta (ETL) | Média |

### Caso de Uso: Varejista
Data Lake: Logs de acesso, áudio de atendimento, fotos dos produtos
Data Warehouse: Venda por região, perfomance por mês
Data Mart de RH: Admissões, turnover e headcount por setor

## Dados On-Premise VS Dados em Núvem
**On-Premise** é a infraestrutura física instalada no local da empresa.
 - Servidores próprios
 - Manutenção interna
 - Controle Total

**Nuvem** são os servidores virtualizados/remotos acessados via internet.
 - AWS, Azure, GCP
 - Infraestrutura virtual
 - Acesso flexível

### Vantagens e Desvantagens

| Tipo | Vantagens | Desvantagens |
| -- |-- | -- |
| **On-Premise** | Controle total dos dados, independência de internet, customização completa | Alto custo inicial, manutenção constante, escalabilidade limitada |
| **Nuvem** | Menor custo inicial, Escalabilidade rápida, atualizações automáticas | Dependência de internet, custos recorrentes, Preocupações com privacidade |

### Tendência de Migração
- Análise de Necessidades: Avaliação de volume e criticidade dos dados
- Estudo de custos: Comparação entre investimento inicial e custos recorrentes.
- Segurança: Implementação de protocolos de proteção adequados.
- Escalabilidade: Possibilidade de crescimento conforme demanda do negócio.