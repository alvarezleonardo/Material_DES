Algoritmo sin_titulo
	Dimension usuario[5]
	
	usuario[1]<-"pedro@ggg.com"
	usuario[2]<-"manuel@ggg.com"
	usuario[3]<-"cintia@ggg.com"
	usuario[4]<-"mariana@ggg.com"
	usuario[5]<-"juan@ggg.com"
	
	
	Imprimir "Ingresar email a buscar"
	Leer email_ingresado
	
	
	posicion_busqueda <- 0
	para x <- 1 hasta 5 hacer
		si usuario[x] = email_ingresado
			posicion_busqueda <- x
		FinSi
	FinPara
	
	si posicion_busqueda > 0
		Imprimir "Mail encontrado en la posición: " posicion_busqueda
	Sino
		Imprimir "Mail no encontrado"
	FinSi
FinAlgoritmo
