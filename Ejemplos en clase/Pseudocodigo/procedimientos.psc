SubProceso mientras_negatio
	contador <- 0
	repetir 
		contador <- contador + 1 
		imprimir "Si quiere cotinuar ingresando numeros, ingrese SI (repetir)I"
		leer quiere_seguir
	Hasta Que quiere_seguir <> "SI" o contador > 10
FinSubProceso

SubProceso mientras_normal(mensaje)
	quiere_seguir <- "SI"
	contador <- 0
	mientras quiere_seguir = "SI"  y  contador < 11 hacer
		contador <- contador + 1
		imprimir mensaje
		leer quiere_seguir
	FinMientras
FinSubProceso

Proceso principal
	Imprimir "Como quiere repetir, 1-Mientras o 2-Repetir"
	leer como_repetir
	si como_repetir = 1 Entonces
		mientras_normal("Si quiere cotinuar ing numeros, ingrese SI (mientras)")	
	sino 
		mientras_negatio
	FinSi
FinProceso










