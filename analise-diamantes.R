# --- 1. Instalação e Carregamento de Pacotes ---

# Execute esta linha UMA VEZ para instalar o pacote 'tidyverse'.
# Se já estiver instalado, você não precisa rodá-la novamente.
# Se ainda der erro de instalação, por favor, me envie a MENSAGEM DE ERRO EXATA.
install.packages("tidyverse")

# Carrega os pacotes necessários para a análise.
library(tidyverse)

# --- 2. Carregamento e Exploração dos Dados ---

# Carrega o conjunto de dados 'diamonds' que já vem com o R.
data("diamonds")

# Visualiza as primeiras linhas do dataframe.
head(diamonds)

# Exibe a estrutura do dataframe (tipos de dados, etc.).
str(diamonds)

# Lista os nomes das colunas do dataframe.
colnames(diamonds)

# --- 3. Manipulação de Dados (Criação de Nova Coluna) ---

# Cria uma nova coluna 'carat_2' multiplicando 'carat' por 100.
diamonds <- mutate(diamonds, carat_2 = carat * 100)

# Verifica se a nova coluna 'carat_2' foi adicionada.
colnames(diamonds)
head(diamonds)

# --- 4. Geração dos Gráficos com ggplot2 e Atribuição a Variáveis ---

grafico_1_bar_cut <- ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
print(grafico_1_bar_cut)

grafico_2_bar_cut_color <- ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, color = cut))
print(grafico_2_bar_cut_color)

grafico_3_bar_cut_fill <- ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))
print(grafico_3_bar_cut_fill)

grafico_4_bar_cut_fill_clarity <- ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))
print(grafico_4_bar_cut_fill_clarity)

grafico_5_bar_cut_fill_clarity_prop <- ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")
print(grafico_5_bar_cut_fill_clarity_prop)

grafico_6_boxplot_clarity_price <- ggplot(data = diamonds) +
  geom_boxplot(mapping = aes(x = clarity, y = price, fill = clarity)) +
  labs(title = "Distribuição de Preços por Pureza (Clarity)",
       x = "Pureza (Clarity)",
       y = "Preço") +
  theme_minimal()
print(grafico_6_boxplot_clarity_price)

grafico_7_boxplot_color_price <- ggplot(data = diamonds) +
  geom_boxplot(mapping = aes(x = color, y = price, fill = color)) +
  labs(title = "Distribuição de Preços por Cor (Color)",
       x = "Cor (Color)",
       y = "Preço") +
  theme_minimal()
print(grafico_7_boxplot_color_price)

grafico_8_mean_price_color_geom_bar <- ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, y = price), stat = "summary", fun = "mean", fill = "skyblue") +
  labs(title = "Preço Médio por Cor dos Diamantes",
       x = "Cor (Color)",
       y = "Preço Médio") +
  theme_minimal()
print(grafico_8_mean_price_color_geom_bar)

grafico_9_mean_price_color_stat_summary <- ggplot(data = diamonds) +
  stat_summary(mapping = aes(x = color, y = price, fill = color),
               fun = "mean", geom = "bar") +
  labs(title = "Preço Médio por Cor dos Diamantes (stat_summary)",
       x = "Cor (Color)",
       y = "Preço Médio") +
  theme_minimal()
print(grafico_9_mean_price_color_stat_summary)

grafico_10_facet_cut_color <- ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~cut)
print(grafico_10_facet_cut_color)


# --- 5. Salvando os 10 Gráficos como Arquivos de Imagem (.png) ---

ggsave("grafico_1_barras_corte.png", plot = grafico_1_bar_cut, width = 8, height = 5, dpi = 300)
ggsave("grafico_2_barras_corte_cor.png", plot = grafico_2_bar_cut_color, width = 8, height = 5, dpi = 300)
ggsave("grafico_3_barras_corte_preenchimento.png", plot = grafico_3_bar_cut_fill, width = 8, height = 5, dpi = 300)
ggsave("grafico_4_barras_corte_pureza.png", plot = grafico_4_bar_cut_fill_clarity, width = 10, height = 6, dpi = 300)
ggsave("grafico_5_barras_corte_pureza_proporcao.png", plot = grafico_5_bar_cut_fill_clarity_prop, width = 10, height = 6, dpi = 300)
ggsave("grafico_6_boxplot_pureza_preco.png", plot = grafico_6_boxplot_clarity_price, width = 10, height = 6, dpi = 300)
ggsave("grafico_7_boxplot_cor_preco.png", plot = grafico_7_boxplot_color_price, width = 10, height = 6, dpi = 300)
ggsave("grafico_8_preco_medio_cor_geom_bar.png", plot = grafico_8_mean_price_color_geom_bar, width = 10, height = 6, dpi = 300)
ggsave("grafico_9_preco_medio_cor_stat_summary.png", plot = grafico_9_mean_price_color_stat_summary, width = 10, height = 6, dpi = 300)
ggsave("grafico_10_facet_corte_cor.png", plot = grafico_10_facet_cut_color, width = 12, height = 8, dpi = 300)
