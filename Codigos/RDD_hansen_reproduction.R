# Bibliotecas generales de R
library(tidyverse)   # Conjunto de paquetes (contiene dplyr y ggplot2)
library(readxl)      # Importar bases de datos tipo excel
library(haven)       # Importar bases de datos tipo stata 

# RD Packages (Conjunto de paquetes para realizar RDDs creados por Cattaneo)
library(rdrobust)
library(rddensity)
library(lpdensity)
library(rdlocrand)

setwd("~/Documents/GitHub/semestre5_git/Evaluacion-de-Impacto-/Datos")

# Imporatando la base de datos 

base_stata = read_dta("hansen_dwi.dta")  # For reading stata files 
base_excel = read_excel("RDD datos.xlsx")

############################################
# Parte II (Reprdoucción empírica del paper)

base = base_stata %>% 
       mutate(bac = low_score / 1000)

# Punto 1
## Histograma del BAC(running variable)

histogram_BAC = base %>% 
  ggplot(aes(x = bac)) +
  geom_histogram(binwidth = 0.001) +
  geom_vline(xintercept = 0.08, color = "red") + 
  geom_vline(xintercept = 0.15, color = "blue") + 
  theme_light() +
  xlab("BAC") + 
  ylab("Frequency") +
  ggtitle("BAC histogram")

histogram_BAC

# Punto 2 
## Test de McCrary



# Punto 2 
## Test de McCrary 
          
# Punto 4
## Test de McCrary

# Punto 5
## Test de McCrary 

# Punto 6
## Test de McCrary 