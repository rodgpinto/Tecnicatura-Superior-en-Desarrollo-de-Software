Algoritmo juegoMayorMenorIgual
    Definir numeroActual, numeroNuevo, puntos Como Entero
    Definir prediccion Como Cadena
    Definir continuar Como Logico
    continuar <- Verdadero
    puntos <- 0
    
    Escribir "Bienvenido al juego Mayor-Menor-Igual."
    Escribir "Reglas:"
    Escribir "1. Se generar� un n�mero aleatorio entre 1 y 109."
    Escribir "2. Deber�s predecir si el siguiente n�mero ser� mayor, menor o igual al actual."
    Escribir "3. Si aciertas, ganas un punto. Si fallas, el juego termina."
    
    numeroActual <- Aleatorio(1,109)
    Escribir "El n�mero actual es: ", numeroActual
    
    Mientras continuar Hacer
        Repetir
            Escribir "�El pr�ximo n�mero ser� mayor, menor o igual? (Ingrese `mayor`, `menor` o `igual`): "
            Leer prediccion
			prediccion = Minusculas(prediccion)
        Hasta Que prediccion = "mayor" | prediccion = "menor" | prediccion = "igual"
        
        numeroNuevo <- Aleatorio(1,109)
        Escribir "El nuevo n�mero es: ", numeroNuevo
        
        Si (prediccion = "mayor" & numeroNuevo > numeroActual) |(prediccion = "menor" & numeroNuevo < numeroActual) |(prediccion = "igual" & numeroNuevo = numeroActual) Entonces
            puntos <- puntos + 1
            Escribir "�Correcto! Tienes ", puntos, " puntos."
        SiNo
			Escribir "-----------------------------------"
            Escribir "�Fallaste! El juego ha terminado."
			Escribir "-----------------------------------"
            continuar <- Falso
        FinSi
        
        numeroActual <- numeroNuevo
    FinMientras
    
    Escribir "Tu puntaje total es: ", puntos, " puntos."
FinAlgoritmo
