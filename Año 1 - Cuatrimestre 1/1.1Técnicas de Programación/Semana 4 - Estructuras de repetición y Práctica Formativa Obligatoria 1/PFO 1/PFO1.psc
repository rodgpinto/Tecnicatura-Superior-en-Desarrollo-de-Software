Algoritmo PFO1
    Definir respuesta, respuestaMinuscula, cuento Como Caracter
    respuesta = ""
    cuento = "¿Querés que te cuente el cuento de la buena Pipa?"
    
    Escribir cuento
	
    Mientras Minusculas(respuesta) <> "hechizo" Hacer
        Leer respuesta
        respuestaMinuscula = Minusculas(respuesta)
		
        Si respuestaMinuscula <> "hechizo" Entonces
            Escribir "Yo no dije ", respuesta
            Escribir "Yo dije si ", cuento
        FinSi
    FinMientras
    
FinAlgoritmo