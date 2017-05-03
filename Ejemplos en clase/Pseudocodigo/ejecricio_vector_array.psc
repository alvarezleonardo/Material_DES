Proceso sin_titulo
	//Usar Matriz
	Dimension Matriz[2,3]
	//Guardar datos ingresadis por pantalla
	Para fila <-1 hasta 2 hacer
		Para Columna <- 1 hasta 3
			Imprimir "Ingrese el numero para la posicion " fila ", " Columna
			Leer valorIngresado 
			Matriz[fila, Columna] <- valorIngresado
		FinPara
	FinPara
	//imprimir contenido de una matriz
	Para fila <-1 hasta 2 hacer
		Para Columna <- 1 hasta 3
			Imprimir "Valor en la " fila ", " Columna " es " Matriz[fila, Columna]
		FinPara
	FinPara
	
	//Usar Vector
	Dimension vector[4]
	//guardar datos ingresados por pantalla
	Para Columna <- 1 hasta 4 hacer
		Imprimir "Ingrese el numero para la posicion " Columna
		Leer valorIngresado 
		Vector[Columna] <- valorIngresado
	FinPara
	//Imprimir contenido del vector
	Para Columna <- 1 hasta 4 hacer
		Imprimir "Ingrese el numero en la posicion " Columna " es " Vector[Columna]
	FinPara
	
	
FinProceso
