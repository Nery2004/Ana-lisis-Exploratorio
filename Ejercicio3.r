# Cargar datos
carros <- read.csv("cars.csv", header = TRUE, stringsAsFactors = FALSE)

# Crear data frame con promedios por marca
peligrosos <- aggregate(
  cbind(symboling, normalized_losses) ~ make,
  data = carros,
  FUN = mean,
  na.rm = TRUE
)

# Ver las primeras 6 filas
head(peligrosos)


# EJERCICIO A

# Cambiar nombres de columnas
colnames(peligrosos) <- c(
  "marca",
  "indicadorPeligro",
  "promedioPerdidas"
)

peligrosos

# EJERCICIO B

# Filtrar marcas sin NA en promedio de pérdidas
peligrosos_sin_na <- subset(peligrosos, !is.na(promedioPerdidas))

peligrosos_sin_na

# EJERCICIO C
# Vector de promedios de pérdidas
vector_perdidas <- peligrosos_sin_na$promedioPerdidas

# Nombres del vector = marcas
names(vector_perdidas) <- peligrosos_sin_na$marca

vector_perdidas

# EJERCICIO D
# Colores distintos para cada barra
colores <- rainbow(length(vector_perdidas))

# Gráfico de barras
barplot(
  vector_perdidas,
  col = colores,
  main = "Promedio de Pérdidas por Marca",
  xlab = "Marca",
  ylab = "Promedio de Pérdidas",
  las = 2
)

# EJERCICIO f
# Ejercicio A
summary(carros[, c("price", "horsepower", "engine_size", "city_mpg")])
sd(carros$price, na.rm = TRUE)
# Ejercicio B
# Histograma
hist(carros$price, main="Distribución del Precio", col="lightblue")

# Prueba de Shapiro-Wilk
shapiro.test(carros$price)
# Ejercicio C
# Tabla de frecuencias
table(carros$body_style)
table(carros$make)
# Ejercicio D
# Correlación entre precio y tamaño del motor
cor(carros$price, carros$engine_size, use = "complete.obs")

