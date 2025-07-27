# diamantes
# 💎 Análise de Dados de Diamantes com R e ggplot2

Este projeto realiza uma análise exploratória do conjunto de dados `diamonds`, disponível no pacote `ggplot2` do R. Ele inclui a criação de gráficos variados para visualizar diferentes aspectos dos diamantes, como corte, cor, pureza e preço.

---

## 📦 Instalação e Carregamento de Pacotes

Antes de executar o código, certifique-se de instalar e carregar o pacote `tidyverse`:

```r
install.packages("tidyverse") # Execute uma única vez
library(tidyverse)
📊 Conjunto de Dados Utilizado
Utiliza-se o dataset diamonds, que já vem incluso no pacote ggplot2. Ele contém informações sobre 53.940 diamantes, incluindo variáveis como:

carat: peso do diamante

cut: qualidade do corte

color: qualidade da cor

clarity: pureza

price: preço em dólares

🛠️ Etapas do Projeto
Carregamento dos dados:

Visualização inicial com head(), str(), e colnames().

Manipulação de dados:

Criação da nova coluna carat_2, que multiplica carat por 100.

Criação de Gráficos com ggplot2:
Abaixo estão os gráficos gerados:

Nº	Tipo de Gráfico	Descrição
1	geom_bar(x = cut)	Contagem de diamantes por corte
2	geom_bar(x = cut, color = cut)	Contagem por corte com bordas coloridas
3	geom_bar(x = cut, fill = cut)	Contagem por corte com preenchimento
4	geom_bar(x = cut, fill = clarity)	Corte com preenchimento por pureza
5	geom_bar(..., position = "fill")	Gráfico de proporção por corte e pureza
6	geom_boxplot(x = clarity, y = price)	Distribuição de preço por pureza
7	geom_boxplot(x = color, y = price)	Preço por cor
8	geom_bar(stat = "summary", fun = "mean")	Preço médio por cor
9	stat_summary(..., fun = "mean")	Preço médio por cor usando stat_summary
10	facet_wrap(~cut) com fill = cut	Facet de cor por tipo de corte

Exportar para as Planilhas
💾 Exportação de Gráficos
Todos os gráficos foram salvos como arquivos .png com ggsave(), prontos para uso em relatórios ou apresentações.

▶️ Como Executar
Instale e carregue o pacote tidyverse.

Copie e execute o código no RStudio ou Posit Cloud.

Verifique os gráficos gerados no console.

Os arquivos .png serão salvos no diretório do projeto.

📁 Estrutura Esperada do Projeto
📁 seu_projeto/
├── analise-diamantes.R      # Script com o código completo (nome corrigido)
├── README.md                # Este arquivo
├── grafico_1_barras_corte.png
├── grafico_2_barras_corte_cor.png
├── ... até ...
└── grafico_10_facet_corte_cor.png
Observações
O código utiliza theme_minimal() para estilizar os gráficos.

A criação da variável carat_2 é apenas ilustrativa.

O projeto pode ser expandido com análises estatísticas, regressões, e dashboards com Shiny.
