SubProceso suma(valor1, valor2)
	rst <- valor1 + valor2
	imprimir "El resultado es de la suma es: " rst
FinSubProceso

SubProceso resta(valor1, valor2)
	rst <- valor1 - valor2
	imprimir "El resultado es de la resta es: " rst
FinSubProceso

SubProceso multiplicar(valor1, valor2)
	rst <- valor1 * valor2
	imprimir "El resultado es de la multiplicación es: " rst
FinSubProceso

SubProceso dividir(valor1, valor2)
	rst <- valor1 / valor2
	imprimir "El resultado es de la division es: " rst
FinSubProceso

SubProceso rst <- quehacer
	imprimir "1: suma"
	imprimir "2: restar"
	imprimir "3: multiplicar"
	imprimir "4: dividir"
	leer rst
FinSubProceso

SubProceso calculadora(quehago, num1, num2)
	si quehago = 1 Entonces
		suma(num1, num2)
	FinSi
	si quehago = 2 Entonces
		resta(num1, num2)
	FinSi
	si quehago = 3 Entonces
		multiplicar(num1, num2)
	FinSi
	si quehago = 4 Entonces
		dividir(num1, num2)
	FinSi
FinSubProceso

Proceso principal
	imprimir "Ingresar primer valor "
	leer num1
	
	imprimir "Ingresar segundo valor "
	leer num2
		
	quehago <- quehacer
	
	calculadora(quehago, num1, num2)
	
FinProceso
