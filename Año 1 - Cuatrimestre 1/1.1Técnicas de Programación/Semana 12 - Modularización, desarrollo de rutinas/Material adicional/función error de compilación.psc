Funcion suma=incremento (s)
	definir suma como entero
	suma = s + 1
	Escribir "Variable dentro del proceso: ", s
FinFuncion

// Se crea una funci�n 
// El algoritmo da error de compilaci�n dado que una funci�n debe ser invocada en una asignaci�n o en una salida de datos

Algoritmo procedimiento1
	definir a Como Entero
	a = 10
	Escribir "Valor de la variable antes de llamar al procedimiento: ",a
	incremento(a)
	Escribir "Resultado de la funci�n ",a 
FinAlgoritmo
