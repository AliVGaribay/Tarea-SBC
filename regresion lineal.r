setwd("C:\\Users\\Ali\\Documents\\7° semestre\\SSP Basados en conocimiento")

regresionLineal <- function(x,y){
	xMedia <- sum(x)/length(x)
	yMedia <- sum(y)/length(y)
	
	dividendo <- 0
	divisor <- 0

	for(c in 1:length(x)){
		dividendo <- dividendo + (x[c] - xMedia) * (y[c] - yMedia)
		divisor <- divisor + (x[c] - xMedia) * (x[c] - xMedia)
	}
	
	m <- dividendo / divisor
	b <- yMedia - (m * xMedia)
	
	theta <- c(b,m)
	
	return(theta)
}

datos <- read.csv("Salary_dataset.csv")

theta <- regresionLineal(datos$YearsExperience, datos$Salary)

plot(datos$YearsExperience, datos$Salary, col = "blue", pch = 19)

abline(a = theta[1], b = theta[2], col = "red", lwd = 3)