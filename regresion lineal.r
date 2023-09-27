setwd("C:\\Users\\Ali\\Documents\\7° semestre\\SSP Basados en conocimiento")

regresionLineal <- function(x,y){
	xMedia <- sum(x)/length(x)
	yMedia <- sum(y)/length(y)
	
	dividendo <- 0
	divisor <- 0

	#se obtiene el resultado de las sumatorias
	for(c in 1:length(x)){
		dividendo <- dividendo + (x[c] - xMedia) * (y[c] - yMedia)
		divisor <- divisor + (x[c] - xMedia) * (x[c] - xMedia)
	}
	
	#Se calcula m (pendiente)
	m <- dividendo / divisor
	#se calcula b (origen)
	b <- yMedia - (m * xMedia)
	
	#Se prepara la salida del retorno
	theta <- c(b,m)
	
	return(theta)
}

#Se lee el dataset
datos <- read.csv("Salary_dataset.csv")

#Se aplica la funcion sobre el dataset
theta <- regresionLineal(datos$YearsExperience, datos$Salary)

#Se grafican los puntos
plot(datos$YearsExperience, datos$Salary, col = "blue", pch = 19)

#Se grafica la funcion obtenida de la regresion lineal
abline(a = theta[1], b = theta[2], col = "red", lwd = 3)