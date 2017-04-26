Proceso sin_titulo
	usuario_interno <- "pedro"
	contraseña_interna <- "1234"
	
	
	Imprimir "Ingresar usuario"
	Leer usuario_ingresado
	
	Imprimir "Ingresar contraseña"
	Leer contraseña_ingresada
	
	Imprimir "Validación con IFAnidado 1, Validacion con IFSimple 2"
	Leer tipo_validacion
	
	si tipo_validacion = 1 entonces
		///Esta es la forma de si anidado y la no muy correcta
		si usuario_interno = usuario_ingresado entonces 
			si contraseña_interna = contraseña_ingresada entonces 
				Imprimir "Pudo ingresar"	
			Sino
				Imprimir "Contraseña incorrecta"
			FinSi
		Sino
			Imprimir "Usuario incorrecto"
		FinSi
	Sino
		///Esta es la forma de un solo si con el "y"
		si usuario_interno = usuario_ingresado y contraseña_interna = contraseña_ingresada entonces 
			Imprimir "Pudo ingresar"	
		Sino
			Imprimir "Fuiste"
		FinSi
	FinSi
	
	
	
	
FinProceso






