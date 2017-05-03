Algoritmo sin_titulo
	Dimension meses[12]
	meses[1]<-"enero"
	meses[2]<-"febrero"
	meses[3]<-"marzo"
	meses[4]<-"abril"
	meses[5]<-"mayo"
	meses[6]<-"junio"
	meses[7]<-"julio"
	meses[8]<-"agosto"
	meses[9]<-"septiembre"
	meses[10]<-"octubre"
	meses[11]<-"noviembre"
	meses[12]<-"diciembre"
	
	Imprimir "Ingresar numero de mes"
	leer numeromes
	
	//imprimir una sola posicion del vector mes
	si numeromes > 0 y numeromes < 13 entonces
		Imprimir "En letras es: " meses[numeromes]
	sino
		imprimir "Mes incorrecto"
	FinSi
	
	//imprimir el resto de los meses
	para x <- 1 hasta 12 hacer
		si x <> numeromes entonces
			Imprimir "El mes es : " meses[x]
		FinSi
	FinPara
	

	
	
	
	
FinAlgoritmo
