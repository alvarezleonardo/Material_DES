Algoritmo sin_titulo
	cobroavalidar <- "visa"
	dtoAaplicar <- 0.75
	
	dtoamostrar <- (1 - dtoAaplicar) * 100
	
	Imprimir "Ingresar el monto de la compra"
	leer monto
	
	Imprimir "Ingresar forma de cobro (" dtoamostrar "% off " cobroavalidar ")"
	leer formadecobro
	
	si formadecobro = cobroavalidar entonces
		imprimir "Venta con dto del " dtoamostrar "% $" monto * dtoAaplicar
	Sino
		imprimir "Venta sin dto $" monto 
	FinSi
	
FinAlgoritmo
