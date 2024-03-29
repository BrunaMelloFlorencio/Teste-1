#Lendo pacotes
library(palmerpenguins)
library(tidyverse)

# Transpose
glimpse("penguins")
unique(penguins$year)
range(penguins$flipper_length_mm)
range(penguins$flipper_lenght_mm, na.rm = T)

palmerpenguins::penguins
glimpse(palmerpenguins::penguins)
penguis
penguins
penguins %>%
  summarise(
    media_bico = mean(bill_length_mm),
    .by = species
  )
penguins %>%
  summarise(
    media_bico = mean(bill_length_mm, na.rm = T),
    .by = species
  )
data.frame(
  x = rnorm(500),
  y = rnorm(500)
) |>
  write.csv("bivariate.csv")
getwd()
here::here()
install.packages("here")
here::here
here::here()
getwd()
getwd()
here::here()
# Carregando os pacotes
library(palmerpenguins)
library(tidyverse)
# glimpse
glimpse(penguins)
unique(penguins$year)
range(penguins$flipper_length_mm)
range(penguins$flipper_length_mm, na.rm = T)
penguins |>
  mutate(tamanho_nadadeira =
           if_else(flipper_length_mm > 200, "longa", "curta"))
penguins |>
  mutate(tamanho_nadadeira =
           if_else(flipper_length_mm > 200, "longa", "curta")) |> glimpse()
mutate(penguins,
       tamanho_nadadeira =
         if_else(flipper_length_mm > 200, "longa", "curta"))
glimpse(penguins)
nadadeiras <- penguins |>
  mutate(tamanho_nadadeira =
           if_else(flipper_length_mm > 200, "longa", "curta")) |>
  filter(!is.na(tamanho_nadadeira)) |>
  summarise(media_bico = mean(bill_length_mm),
            desv_pad_bico = sd(bill_length_mm),
            .by = tamanho_nadadeira)
nadadeiras
# vamos ler um arquivo simples
bivariate_norm <- read.csv(
  "/home/cesaragalvao/Documents/r-projects/curso_quarto_GYN/data/bivariate.csv"
)
head(bivariate_norm)
?read.csv
getwd()
read.csv("data/bivariate.csv")