Funcion cargar_vendedores (Vendedores)
    Vendedores[0] = "Juan"
    Vendedores[1] = "Sandra"
    Vendedores[2] = "Claudia"
    Vendedores[3] = "Pedro"
    Vendedores[4] = "Leonardo"
FinFuncion

Funcion cargar_ventas(ventas)
    Definir i, j Como Entero
    Para i = 0 Hasta 4 Hacer
        Para j = 0 Hasta 5 Hacer
            ventas[i, j] = aleatorio(1000, 5000)  
        FinPara
    FinPara
FinFuncion

Funcion obtener_total_vendedor(Vendedores, ventas, nombre)
    Definir i, j Como Entero
    Definir total Como Real
    total = 0
    Definir vendedor_encontrado Como Logico
    vendedor_encontrado = Falso
    
    Para i = 0 Hasta 4 Hacer
        Si Minusculas(Vendedores[i]) = nombre Entonces 
            vendedor_encontrado = Verdadero
            Para j = 0 Hasta 5 Hacer 
                total = total + ventas[i, j]  
            FinPara
            Escribir "El total de ventas de ", nombre, " durante el semestre es: $", total
        FinSi
    FinPara
    
    Si vendedor_encontrado = Falso Entonces
        Escribir "El vendedor no existe."
    FinSi
FinFuncion

Algoritmo Ventas_Mensuales
    Definir Vendedores Como Caracter
    Definir Ventas Como Real
    Definir nombre_vendedor Como Caracter
	
    Dimension Vendedores(5)
    Dimension Ventas(5,6)
	
    cargar_vendedores(Vendedores)  
    cargar_ventas(Ventas)  
	
    Escribir "Ingrese el nombre del vendedor:"
    Leer nombre_vendedor  
	nombre_vendedor = Minusculas(nombre_vendedor)
    obtener_total_vendedor(Vendedores, Ventas, nombre_vendedor)  
FinAlgoritmo
