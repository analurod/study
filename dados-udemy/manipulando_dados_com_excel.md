# Relatório de Análise de Vendas

## Introdução
Este relatório tem como objetivo realizar uma análise detalhada sobre o desempenho de vendas de uma empresa. A análise foi realizada com base em dados de vendas de diferentes meses, considerando a **quantidade de itens vendidos**, o **valor das vendas por categoria**, a **distribuição por região** e as **características dos clientes** (VIP vs Não VIP). O foco é entender a sazonalidade, identificar oportunidades de melhoria e otimizar as estratégias de vendas.Importante ressaltar que os dados são apenas para fins de estudo de manipulação de planilhas e relatório de análise.

---

## Objetivos
- **Qual o desempenho da empresa nas vendas?**
  - Comparar o desempenho de vendas em diferentes períodos e identificar a sazonalidade.
  - Analisar a variação de vendas por categoria e estado.
  
- **Quais são as oportunidades de melhoria nas vendas?**
  - Identificar produtos e categorias com **potencial de crescimento** e otimizar campanhas de vendas.
  
- **Quais produtos têm maior oportunidade de otimização?**
  - Identificar categorias e produtos com **maior rentabilidade** e com **baixo desempenho**.

---

## Manipulação da Planilha

A análise dos dados foi realizada com base em uma planilha de vendas que continha as seguintes colunas principais e pode ser encontrada na pasta planilhas com o nome dados_vendas_empresa_v0:

- **Data da Venda**
- **ID do Cliente**
- **Quantidade Vendida**
- **Preço Unitário**
- **Total da Venda**
- **Categoria do Produto**
- **Estado do Cliente**

Para preparar os dados para análise, as seguintes manipulações foram realizadas no Excel:

### 1. **Ajustes de Formatação**
- Ajustei a formatação das **colunas de data, números e moeda** para garantir que os dados fossem apresentados corretamente, gerando dados_vendas_empresa_v1.
  - **Data da Venda**: Formatação ajustada para tipo "Data".
  - **ID do Cliente**: Formatado como "Número".
  - **Quantidade Vendida**: Formatada como "Número" com uma casa decimal.
  - **Preço Unitário**: Formatação como "Moeda".
  - **Total da Venda**: Formatação como "Moeda".

### 2. **Verificação de Dados Faltantes e Erros**
- Verifiquei se havia **valores ausentes** ou **erros** nas colunas de quantidade vendida, preço unitário e total da venda, utilizando **filtros** e a fórmula `SE()` para identificar células vazias.
- Corrigi valores faltantes na coluna **Preço Unitário**, calculando o valor a partir do **Total da Venda** dividido pela **Quantidade Vendida**.

### 3. **Criação de Novas Colunas**
- **Ano/Mês**: Para facilitar a análise por período, criei uma coluna que combina **ano e mês** com a fórmula:
  ```excel
  =ANO(A2) & "_" & TEXTO(MÊS(A2), "00")
  ```
- **Dia da Semana:** Utilizei a fórmula =DIA.DA.SEMANA(A2) para adicionar o dia da semana da venda e analisar em quais dias as vendas são mais concentradas.

### 4. Criação de Colunas de Lucro e Gasto

Com a premissa de 40% de lucro e 10% de gasto para todos os produtos, criei duas novas colunas para calcular o lucro e o gasto:

**Lucro:** Calculado como Total da Venda * 40%

**Gasto:** Calculado como Total da Venda * 10%

### 5. Transformação em Tabela

Em dados_vendas_empresa_v2 transformei os dados em uma tabela para facilitar a análise e a criação de tabelas dinâmicas.

### 6. Criação de Tabelas Dinâmicas

Para facilitar a visualização das informações, criei tabelas dinâmicas para segmentar as vendas por categoria, estado e tipo de cliente (VIP vs Não VIP).

## Análise de Vendas
O relatório completo pode ser encotrado na pasta de relatório.

### Vendas Mensais
O primeiro passo foi observar as **vendas totais por mês**. Em comparação com o mês de **dezembro de 2024**, o mês de **fevereiro de 2025** teve um aumento expressivo de **65,96%** em termos de valor, mas a quantidade de itens vendidos aumentou apenas **4,40%**.

- **Dez/2024**: R$ 190.309,99  
- **Fev/2025**: R$ 315.849,32  
- **Variação**: +65,96% (em valor)

Isso indica que houve um aumento no valor total de vendas, mas não um grande aumento na quantidade de itens vendidos, sugerindo que os produtos vendidos em **fevereiro de 2025** tinham preços unitários mais elevados.

---

### Vendas por Categoria
Analisamos as vendas por **categoria de produto**, onde foi possível perceber que as **categorias de Alimentos e Vestuário** representaram grande parte das vendas.

### Insights:
- **Eletrônicos** tiveram boas vendas em **dezembro**, mas o preço unitário era mais baixo. Já **Alimentos**, **Vestuário** e **Brinquedos** se destacaram em **fevereiro de 2025**, com preços unitários mais elevados, o que contribuiu para o aumento nas vendas.

---

### Vendas por Região
A análise por **região** revelou que o **Nordeste** tem as **maiores vendas**, enquanto o **Sudeste** apresenta o menor valor em vendas, apesar de ser uma das regiões com maior cobertura de mercado.

- **Nordeste**: Maior valor de vendas
- **Sudeste**: Menor valor de vendas

Esse dado sugere que a empresa tem uma **forte presença** no **Nordeste**, enquanto poderia explorar mais as regiões do **Sudeste** e **Sul**.

---

### Vendas por Classificação de Cliente (VIP vs Não VIP)
A segmentação de clientes mostrou que os **clientes VIP** têm um **ticket médio de RS 16.191,27**, enquanto os **Não VIP** possuem um ticket médio de **RS 3.941,47**. Isso reflete uma diferença significativa no comportamento de compra dos dois grupos.

| Tipo de Cliente | Ticket Médio  | Quantidade de Vendas |
|------------------|---------------|----------------------|
| VIP              | R$ 16.191,27  | 588                  |
| Não VIP          | R$ 3.941,47   | 573                  |

### Insights:
- Os **clientes VIP** gastam mais que o dobro dos **clientes Não VIP**, representando **70,25%** das vendas totais. A empresa pode **explorar estratégias diferenciadas** para atrair e reter clientes **Não VIP**, aumentando seu **ticket médio** e sua participação nas vendas.
  
- **Dia de Maior Gasto**:  
  - **VIP**: Sexta-feira e Sábado  
  - **Não VIP**: Sábado e Domingo  
  - Ambos os grupos tendem a não comprar nas **quartas-feiras**.

---
## Oportunidades de Melhoria

### **Otimização de Categorias de Produtos**
- Investir mais em **Alimentos** e **Vestuário**, categorias que têm **grande margem de lucro** e potencial de crescimento.
- **Promoções de cross-selling** entre categorias com bom desempenho (ex: **Vestuário e Brinquedos**).
  
### **Ações de Marketing no Nordeste**
- O **Nordeste** é uma região com alto volume de vendas, e deve-se **replicar** essas estratégias de marketing em outras regiões, como **Sudeste** e **Sul**, para maximizar a presença no mercado.

### **Campanhas para Clientes Não VIP**
- **Cupons de Desconto** ou **Cashback** para **clientes Não VIP**, incentivando o aumento do ticket médio e o aumento das vendas.

---

## Conclusão
Este exercício foi uma excelente oportunidade para explorar dados de **vendas e comportamento de clientes**, além de gerar insights para a **otimização de vendas** e estratégias de marketing. Os **clientes VIP** são a chave para os **maiores valores de vendas**, mas há grandes oportunidades para **fidelizar clientes Não VIP** e expandir as vendas nas regiões menos exploradas.

---