SubProceso rst <- buscar_pos(tamanio, vector)
	f <- 0
	repetir 
		f <- f + 1
	Hasta Que vector(f) = 0 o f = tamanio
	
	si vector(f) = 0 
		rst <- f
	sino 
		rst <- 0
	FinSi
FinSubProceso

Subproceso Ingresar(tamanio, vector)
	pos <- buscar_pos(tamanio, vector)
	si pos <> 0
		Imprimir "Ingresar valor"
		leer valor_a_guardar
		vector(pos) <- valor_a_guardar	
	Sino
		Imprimir "Memoria agotada"
	FinSi
FinSubProceso
	
SubProceso rst<- Obtener(tamanio, vector)
	rst <- vector(1)
	para f <- 2 hasta tamanio
		vector(f - 1) <- vector(f)
	FinPara
	vector(tamanio) <- 0
FinSubProceso


Algoritmo cola
	x <- 10
	Dimension vector_cola(x)
	para f <- 1 hasta x hacer
		vector_cola(f) <- 0
	FinPara
	
	repetir 
		Limpiar Pantalla
		imprimir "OP: 1 - ingresar valor"
		imprimir "OP: 2 - obtener valor"
		leer op
		
		segun op hacer
			1:
				Ingresar(x, vector_cola)
			2:	
				valor_get <- Obtener(x, vector_cola)
				si valor_get = 0 entonces
					imprimir "No tiene datos"
				sino 
					imprimir "El valor es: " valor_get	
				FinSi
			3: 
				imprimir "Opción incorrecta"
		FinSegun
		Imprimir "Para salir ingresar S"
		leer opcion_salir 
	hasta que opcion_salir = "S"	
FinAlgoritmo
