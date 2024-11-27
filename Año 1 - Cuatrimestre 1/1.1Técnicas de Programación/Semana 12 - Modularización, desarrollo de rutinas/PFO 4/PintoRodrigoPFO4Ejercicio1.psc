Algoritmo PintoRodrigoPFO4Ejercicio1
	
    Definir i, j, matriz Como Entero
    Dimension matriz[5,10]
	
    Para i <- 0 Hasta 4 Con Paso 1 Hacer
        Para j <- 0 Hasta 9 Con Paso 1 Hacer
            matriz[i,j] <- Azar(100) 
        FinPara
    FinPara
	
    Escribir "Matriz sin ordenar:"
    MostrarMatriz(matriz)
	
    Para i <- 0 Hasta 4 Con Paso 1 Hacer
        OrdenarFila(matriz, i)
    FinPara
	
    
    Escribir "Matriz con filas ordenadas:"
    MostrarMatriz(matriz)
	
FinAlgoritmo

Funcion  MostrarMatriz(matriz)
Definir i, j Como Entero
Para i <- 0 Hasta 4 Con Paso 1 Hacer
	Escribir Sin Saltar "Fila ", i+1, ": "
	Para j <- 0 Hasta 9 Con Paso 1 Hacer
		Escribir Sin Saltar matriz[i,j], " "
	FinPara
	Escribir "" 
FinPara
FinFuncion


Funcion  OrdenarFila(matriz, fila)
Definir j, k, aux Como Entero
Para k <- 0 Hasta 8 Con Paso 1 Hacer
	Para j <- 0 Hasta 8 - k Con Paso 1 Hacer
		Si matriz[fila,j] > matriz[fila,j+1] Entonces
			aux <- matriz[fila,j]
			matriz[fila,j] <- matriz[fila,j+1]
			matriz[fila,j+1] <- aux
		FinSi
	FinPara
FinPara
FinFuncion

