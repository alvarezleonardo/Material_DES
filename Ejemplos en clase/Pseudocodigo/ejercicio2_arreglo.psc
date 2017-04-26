Proceso sin_titulo
	Dimension usuario[4]
	Dimension contraseña[4]
	usuario[1]<-"leo"
	usuario[2]<-"pepe"
	usuario[3]<-"cintia"
	usuario[4]<-"mariana"
	
	contraseña[1]<-"123"
	contraseña[2]<-"12.3"
	contraseña[3]<-"ala"
	contraseña[4]<-"josua"
	
	
	Imprimir "Ingresar usuario"
	Leer usuario_ingresado
	
	Imprimir "Ingresar contraseña"
	Leer contraseña_ingresada
	
	posicion_usuario <- 0
	para x <- 1 hasta 4 hacer
		si usuario[x] = usuario_ingresado
			posicion_usuario <- x
		FinSi
	FinPara
	
	si posicion_usuario > 0 y contraseña[posicion_usuario] = contraseña_ingresada
		Imprimir "Todo bien"
	Sino
		Imprimir "Fuiste"
	FinSi
	
FinProceso
	
	
	
	
	
	
	
	
