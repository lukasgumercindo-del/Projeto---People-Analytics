# Projeto---People-Analytics

# 📊 People Analytics: Investigações de Turnover com Python, SQL e Power BI

Imagine abrir uma reunião de diretoria onde o consenso geral é: *"Nossos talentos estão saindo porque a concorrência paga mais"*, e você conseguir provar, com dados, que o salário não tem nada a ver com o problema. 

Esse projeto nasceu exatamente para resolver esse mistério. Construí uma solução analítica de ponta a ponta (**End-to-End**) para entender por que uma empresa real estava sofrendo com uma taxa de rotatividade (**Turnover**) tão agressiva e onde estavam os principais gargalos.

---

## 🛠️ O Ecossistema Técnico
Para que o projeto fizesse sentido no mundo real, decidi não usar apenas arquivos soltos. Estruturei um fluxo automatizado integrando três pilares:

* **Engenharia de Dados:** Armazenei e estruturei o histórico de 1.000 colaboradores em um banco de dados **PostgreSQL** local (tabela `funcionarios_rh`).
* **Análise e Ciência de Dados:** Usei o **Python (no VS Code)** com as bibliotecas `pandas` para as regras de negócio e `sqlalchemy` para conversar direto com o banco de dados.
* **Business Intelligence:** Conectei o **Power BI Desktop** direto no Postgres via driver Npgsql, usando **DAX** para criar as métricas dinâmicas.

---

## 📉 O Problema de Negócio (O Cenário)
O RH estava preocupado com o volume de demissões e o custo invisível que isso gera (recrutamento, onboarding, perda de histórico). A suspeita da liderança era estritamente financeira. Para responder a isso, puxei os dados do banco e comecei a investigar pelo Python.

---

## 🔬 O Diagnóstico: O que os dados me contaram?

### 1. O tamanho do rombo
A empresa fechou o período com **30,80% de Turnover Global** (308 desligamentos contra 692 ativos). Para o mercado, o aceitável gira entre 10% e 15%. Ou seja, estávamos operando com o dobro do limite saudável.

### 2. Onde estava o foco de incêndio?
Fazendo cruzamentos de dados (`pd.crosstab`), descobri que o problema não estava distribuído igualmente. O setor de **Tecnologia** era o mais crítico:
1. **Tecnologia:** 34,77% de turnover 🚨
2. **Vendas:** 31,45%
3. **Recursos Humanos:** 31,34%
4. **Operações:** 30,35%
5. **Marketing:** 21,19% (O mais estável)

### 3. A Quebra do Sentido Comum (Salário vs. Clima)
Aqui foi onde o Python se pagou. Agrupei os funcionários entre quem ficou e quem saiu para olhar a média salarial e a nota de satisfação interna (escala de 1 a 5). O resultado foi surpreendente:

* **Quem ficou (Ativos):** Média Salarial de R$ 6.251,25 | Satisfação Média: **3.38**
* **Quem saiu (Inativos):** Média Salarial de R$ 6.221,23 | Satisfação Média: **1.92**

💡 **A grande virada do projeto:** A diferença salarial entre os dois grupos é de míseros 30 reais. **O problema não era dinheiro.** Quem saía da empresa estava profundamente infeliz (satisfação em 1.92). O diagnóstico claro aqui é uma crise de clima organizacional, liderança ou sobrecarga, principalmente na área de Tecnologia.

---

## 📊 O Dashboard Executivo (Power BI)
Sabendo que diretores não analisam linhas de código, levei essas descobertas para um painel interativo no Power BI conectado ao banco de dados.

Optei por um **Tema Escuro (Dark Theme)** bem minimalista e corporativo para dar destaque ao que realmente importa: os KPIs críticos. Nele, estruturei:
* O cartão principal isolando a taxa de turnover.
* O ranking de criticidade dos departamentos por barras horizontais.
* Um comparativo direto mostrando o abismo de satisfação entre quem permanece e quem decide deixar a empresa.

---

## 🚀 Minhas Recomendações Estruturais para a Empresa
Se eu estivesse apresentando esse projeto para o CEO agora, minhas propostas seriam:
1. **Intervenção em TI:** Rodar pesquisas qualitativas focadas no time de Tecnologia para descobrir o que gerou a nota 1.92 (Ex: microgestão, falta de perspectiva de carreira).
2. **Treinar as Lideranças:** Focar no desenvolvimento de soft skills para os gestores das áreas que passaram dos 30% de perda.
3. **Segurar o Caixa:** Vetei qualquer ideia de dar aumentos salariais generalizados para tentar conter saídas. Seria um desperdício de dinheiro que não atacaria a causa raiz.
