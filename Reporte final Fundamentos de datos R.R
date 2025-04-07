#Reporte final 
#Arisbel Flores Ariza

# Carga de paquetes
library(readr)
library(ggplot2)
library(dplyr)

# Importar datos
data <- read_csv("salarios_mujeres.csv")

#Exploración de los datos
# Ver primeras filas del conjunto de datos
head(data)

#información sobre los datos
summary(data)


#Transformación y limpieza de los datos
#manejo de nulos
data <- na.omit(data)

# Estructura de los datos
str(data)

# Cálculo de la media
media <- mean(data$Edad)
print(paste("La media es:", media))

# Cálculo de la mediana
mediana <- median(data$Edad)
print(paste("La mediana es:", mediana))


# Sumario de los datos (estadísticas descriptivas y MIN, MEDIANA, MAX, Quartiles...)
print("Resumen de los datos:")
summary(data)


#Visualización de datos con ggplot2

# Histograma - Distribución de la edad 
ggplot(data, aes(x = Edad)) +  
  geom_histogram(binwidth = 5, fill = "lightgreen", color = "black") +
  labs(title = "Distribución de la edad", x = "Edad", y = "Frecuencia") +
  theme_minimal()

# Histograma - Distribución del salario 
ggplot(data, aes(x = Salario)) +  
  geom_histogram(binwidth = 1000, fill = "lightgreen", color = "black") +
  labs(title = "Distribución del salario", x = "salario", y = "Frecuencia") +
  theme_minimal()