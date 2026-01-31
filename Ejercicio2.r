# Cargar los datos
carros <- read.csv("cars.csv", header = TRUE, stringsAsFactors = FALSE)

# Contar carros tipo hatchback
hatchback_count <- sum(carros$body_style == "hatchback")

hatchback_count


# Filtrar carros convertibles
convertibles <- subset(carros, body_style == "convertible")

# Calcular el promedio de pérdidas sin NA
promedio_perdidas <- mean(convertibles$normalized_losses, na.rm = TRUE)

promedio_perdidas