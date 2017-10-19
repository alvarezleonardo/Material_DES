Algoritmo sin_titulo
	definir aulaNombre como texto
	definir aulaCapacidad como entero
	definir cantAlumnos como numero 
	definir alumnoMaximo como entero
	definir posicionMax Como Entero
	definir alumnoMinimo Como Entero
	
	alumnoMinimo <- 1
	posicionMax <- 4
	alumnoMaximo = 0
	Dimension aulaNombre[posicionMax]
	Dimension aulaCapacidad[posicionMax]
	
	aulaNombre[1]<-"Azul"
	aulaNombre[2]<-"Verde"
	aulaNombre[3]<-"Amarillo"
	aulaNombre[4]<-"Rojo"
	aulaCapacidad[1]<-40
	aulaCapacidad[2]<-35
	aulaCapacidad[3]<-30
	aulaCapacidad[4]<-55
	
	para i <- 1 hasta posicionMax hacer
		si alumnoMaximo < aulaCapacidad[i] entonces
			alumnoMaximo <- aulaCapacidad[i]
		FinSi
	FinPara
	
	imprimir "Cantidad alumnos"

	Hacer
		leer cantAlumnos		
		si cantAlumnos < alumnoMinimo o cantAlumnos > alumnoMaximo		
			imprimir "Ingrese por favor la cantidad correta (maximo " alumnoMaximo " alumnos)"
		Fin Si
	Hasta Que cantAlumnos >= alumnoMinimo y cantAlumnos <= alumnoMaximo		
	
	definir diferenciaCant, aula como entero
	difCant <- cantAlumnos
	aula <- 0
	para i <- 1 hasta posicionMax Hacer
		si difCant > aulaCapacidad[i] - cantAlumnos y aulaCapacidad[i] - cantAlumnos >= 0
			aula <- i
			difCant = aulaCapacidad[i] - cantAlumnos
		FinSi
	FinPara
	imprimir "El aula optima para los alumnos es: " aulaNombre[aula]	
	
FinAlgoritmo
