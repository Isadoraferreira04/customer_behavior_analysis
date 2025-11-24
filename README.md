# customer_behavior_analysis
Projeto de Análise de dados para mostrar tendências dos consumidores de uma empresa fictícia usando Python, SQL e Power BI.
Aqui está um **README.md profissional, direto, organizado e fácil de entender para recrutadores**, cobrindo todas as etapas do seu projeto: Python, EDA, limpeza, SQL/PostgreSQL, Power BI, documentação e apresentação.

---

# **Customer Shopping Behavior – Data Analysis Project**

##  **Geral**

Este projeto realiza uma análise completa do comportamento de clientes a partir de um dataset real. O objetivo é transformar dados brutos em **insights acionáveis**, utilizando uma pipeline moderna de análise:

1. Carregamento e exploração dos dados em **Python**
2. EDA (Exploratory Data Analysis)
3. Limpeza, tratamento e transformação
4. Criação de banco e consultas SQL em **PostgreSQL**
5. Construção de dashboard interativo no **Power BI**
6. Documentação dos processos e resultados
7. Apresentação final em **Gamma**

Este repositório organiza todos os arquivos usados e produzidos durante o projeto.

---

## **Dataset**

Arquivo: **`customer_shopping_behavior.csv`**

O dataset contém informações de compras de clientes, incluindo:

* Demografia (Idade, Gênero, Localização)
* Categorias de produtos
* Valores gastos
* Frequência de compras
* Métodos de pagamento
* Preferências de envio
* Indicadores de desconto, assinatura, etc.

Essas variáveis permitem análises comportamentais, segmentação e identificação de padrões.

---

##  **Ferramentas Utilizadas**

| Etapa          | Ferramenta                                 |
| -------------- | ------------------------------------------ |
| Análise e EDA  | Python (Pandas)                            |
| Banco de Dados | PostgreSQL + SQLAlchemy                    |
| Consultas      | SQL                                        |
| Dashboard      | Power BI                                   |
| Documentação   | Markdown + Notion                          |
| Apresentação   | Gamma                                      |
| Versionamento  | Git / GitHub                               |

---

##  **Pipeline do Projeto**

### **1. Python – Carregamento & EDA**

* Importação do dataset
* Verificação de tipos, nulos e inconsistências
* Estatísticas descritivas
* Gráficos exploratórios (distribuições, correlações, categorias)
* Identificação de outliers
* Criação de features auxiliares (ex.: idade agrupada)

---

### **2. Limpeza e Transformação**

* Conversão de tipos incorretos
* Padronização de strings
* Remoção/tratamento de valores faltantes
* Ajuste de colunas categóricas
* Correção de encoding (UTF-8)

Dataset final é salvo como dataframe limpo e pronto para ingestão no banco.

---

### **3. Banco de Dados – PostgreSQL**

* Criação do banco de dados
* Criação de tabela `customer`
* Inserção do dataset limpo via Python com SQLAlchemy
* Execução de queries analíticas, incluindo:

  * Valor médio gasto por cliente
  * Produtos mais comprados
  * Impacto de descontos
  * Segmentação por categoria
  * Frequência de compra por região

---

### **4. Dashboard no Power BI**

Criação de painel interativo contendo:

* Receita total e média de compra
* Categorias mais vendidas
* Distribuição por idade e gênero
* Mapas por região
* Efeito de descontos na compra
* Comparação entre métodos de pagamento
* Filtros dinâmicos para explorar o comportamento do cliente

---

### **5. Documentação**

Documentação clara e objetiva incluindo:

* Descrição do dataset
* Metodologias utilizadas
* Principais descobertas
* Dicionário de dados
* Conclusões e recomendações
* Próximos passos

---

### **6. Apresentação no Gamma**

Apresentação final desenvolvida no Gamma com:

* Contexto do problema
* Metodologia
* Insights mais relevantes
* Visualizações principais
* Conclusão executiva

Feita para ser compreendida facilmente por público técnico e não técnico.

---

##  **Como Rodar o Projeto Localmente**

### **1. Clonar o repositório**

```bash
git clone https://github.com/seuusuario/seurepositorio.git
cd seurepositorio
```

---

### **2. Criar ambiente virtual**

```bash
python -m venv .venv
source .venv/bin/activate   # Linux/macOS
.venv\Scripts\activate      # Windows
```

---

### **3. Instalar dependências**

```bash
pip install -r requirements.txt
```

---

### **4. Configurar o PostgreSQL**

Criar banco UTF-8:

```sql
CREATE DATABASE customer_behavior
    WITH ENCODING 'UTF8'
    TEMPLATE template0;
```

Atualizar credenciais no script Python:

```python
username = "postgres"
password = "sua_senha"
host = "localhost"
port = "5432"
database = "customer_behavior"
```

---

### **5. Executar o notebook de análise**

Abra no VSCode ou Jupyter:

```
analysis.ipynb
```

---

### **6. Abrir o Dashboard**

Arquivo:

```
dashboard.pbix
```

---

##  **Resultados Principais**

* Identificação de padrões claros de compra por idade e estação
* Descoberta das categorias com maior ticket médio
* Análise do impacto real de descontos na receita
* Insights para possíveis estratégias de marketing segmentado

---

##  **Contribuições**

Sugestões, melhorias e pull requests são bem-vindos.

---


