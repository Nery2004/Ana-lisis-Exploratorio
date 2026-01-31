# Cargar el archivo CSV
carros <- read.csv("cars.csv", header = TRUE, stringsAsFactors = FALSE)

# Mostrar las primeras 5 filas del dataset
head(carros, 5)

# Crear la tabla de clasificación de variables
clasificacion_variables <- data.frame(
  Variable = c(
    "symboling", "normalized-losses", "make", "fuel-type", "aspiration",
    "num-of-doors", "body-style", "drive-wheels", "engine-location",
    "wheel-base", "length", "width", "height", "curb-weight",
    "engine-type", "num-of-cylinders", "engine-size", "fuel-system",
    "bore", "stroke", "compression-ratio", "horsepower", "peak-rpm",
    "city-mpg", "highway-mpg", "price"
  ),
  
  Tipo = c(
    "Cuantitativa", "Cuantitativa", "Cualitativa", "Cualitativa", "Cualitativa",
    "Cualitativa", "Cualitativa", "Cualitativa", "Cualitativa",
    "Cuantitativa", "Cuantitativa", "Cuantitativa", "Cuantitativa", "Cuantitativa",
    "Cualitativa", "Cualitativa", "Cuantitativa", "Cualitativa",
    "Cuantitativa", "Cuantitativa", "Cuantitativa", "Cuantitativa", "Cuantitativa",
    "Cuantitativa", "Cuantitativa", "Cuantitativa"
  ),
  
  Subtipo = c(
    "Discreta (ordinal)", "Continua", "Nominal", "Nominal", "Nominal",
    "Nominal", "Nominal", "Nominal", "Nominal",
    "Continua", "Continua", "Continua", "Continua", "Continua",
    "Nominal", "Nominal", "Continua", "Nominal",
    "Continua", "Continua", "Continua", "Continua", "Continua",
    "Continua", "Continua", "Continua"
  )
)

# Mostrar la tabla
clasificacion_variables
