Proceso sin_titulo
	Dimension formacobro[3,4]
	formacobro[1,1] <- "Visa"
	formacobro[1,2] <- "Amex"
	formacobro[1,3] <- "Diners"
	formacobro[1,4] <- "Cabal"
	
	formacobro[2,1] <- "10"
	formacobro[2,2] <- "2"
	formacobro[2,3] <- "0"
	formacobro[2,4] <- "50"
	
	formacobro[3,1] <- "1"
	formacobro[3,2] <- "5"
	formacobro[3,3] <- "7"
	formacobro[3,4] <- "5"
	//primer entregable
	
	imprimir " Formas de cobro disponibles"
	Imprimir "-----------------------------"
	para columna <- 1 hasta 4 hacer
		Imprimir formacobro[1, columna] "........." formacobro[2, columna]
	FinPara
	Imprimir "-----------------------------"
	
	//entregable segundo
	Imprimir "Ingresar día de la semana"
	leer diasemana
	
	imprimir "Ingresar el monto de la venta"
	leer montoventa
	
	imprimir "Ingresar forma de pago"
	leer formadepago
	
	cobroencontrado <- 0
	para columna <- 1 hasta 4 Hacer
		
		si formacobro[1,columna] = formadepago entonces
			cobroencontrado <- columna	
		FinSi
	FinPara
	
	si cobroencontrado <> 0 entonces
		si diasemana = formacobro[3, cobroencontrado] Entonces
			dtoaaplicar <- 	convertiranumero(formacobro[2, cobroencontrado])
		sino 	
			dtoaaplicar <- 0
		FinSi
			
		imprimir "Totales"
		imprimir "-----------------------------------------"
		imprimir "Subtotal:" montoventa
		Imprimir "Dto (" dtoaaplicar "%):" montoventa * (dtoaaplicar / 100)
		Imprimir "Total:   " montoventa * (1 - (dtoaaplicar / 100))
		Imprimir "-----------------------------------------"
	Sino
		Imprimir "No lo encontro"	
	FinSi
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
FinProceso
