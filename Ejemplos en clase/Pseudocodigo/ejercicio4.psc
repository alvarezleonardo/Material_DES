Proceso sin_titulo
	FormaPagoDto <- "visa"
	ImporteDto <- 0.70
	DtoaMostrar <- (1 - ImporteDto) * 100
	Imprimir "Ingrese el monto de la venta"
	Leer MontoVenta
	
	Imprimir "Indique forma de pago (" DtoaMostrar " % en " FormaPagoDto ")"
	Leer FormaPago
	
	si FormaPago = FormaPagoDto Entonces
		MontoVenta <- MontoVenta * ImporteDto
		Imprimir "Se aplico un dto del " DtoaMostrar  "%, importe final: " MontoVenta	
	sino 
		Imprimir "Importe final sin dto: " MontoVenta	
	FinSi
	
	
FinProceso






