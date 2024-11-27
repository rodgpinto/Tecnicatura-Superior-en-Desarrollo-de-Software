Algoritmo biblioteca
    Definir genero Como Caracter
    Definir nombreLibro, libroMayorPags Como Cadena
    Definir estante, cantPag, mayorPags, contadorLibros, generoInfantil, generoNovela, generoHistoria, totalLibros Como Entero
    Definir promedioLibrosEstante Como Real
    
    generoInfantil <- 0
    generoNovela <- 0
    generoHistoria <- 0 
    totalLibros <- 0
    
    Para estante <- 1 Hasta 5 Con Paso 1 Hacer
        mayorPags <- 0
        libroMayorPags <- ""
        contadorLibros <- 0
        Escribir "Estante ", estante, ": Ingrese los libros (Escriba `FIN` en el nombre para finalizar)"
        
        Repetir
            Escribir "Ingrese el nombre del libro: "
            Leer nombreLibro
            nombreLibro <- Mayusculas(nombreLibro)
            Si nombreLibro <> "FIN" Entonces
                				
				Repetir
					Escribir "Ingrese el género (`I` = Infantil, `N` = Novela, `H` = Historia): "
					Leer genero
					genero <- Mayusculas(genero)
					Si genero = "I" Entonces
						generoInfantil <- generoInfantil + 1
					SiNo
						Si genero = "N" Entonces
							generoNovela <- generoNovela + 1
						SiNo
							Si genero = "H" Entonces
								generoHistoria <- generoHistoria + 1
							SiNo
								Escribir "Género no válido."
							FinSi
						FinSi
					FinSi
				Hasta Que  genero = "I" | genero = "N" | genero = "H"
				
                Repetir
                    Escribir "Ingrese la cantidad de páginas (mayor a 0): "
                    Leer cantPag
					Escribir "Ingrese solo numeros (mayor a 0): "

                Hasta Que cantPag > 0

                Si cantPag > mayorPags Entonces
                    mayorPags <- cantPag
                    libroMayorPags <- nombreLibro
                FinSi
                
                contadorLibros <- contadorLibros + 1
            FinSi
            
        Hasta Que nombreLibro = "FIN"
        
        Si libroMayorPags <> "" Entonces
			Escribir "-----------------------------------"
            Escribir "El libro con más páginas en el estante ", estante, " es: ", libroMayorPags, " con ", mayorPags, " páginas."
        FinSi
        
        totalLibros <- totalLibros + contadorLibros
        
    FinPara
    
    Escribir "Cantidad de libros por género:"
    Escribir "Infantil: ", generoInfantil
    Escribir "Novela: ", generoNovela
    Escribir "Historia: ", generoHistoria
    
    promedioLibrosEstante <- totalLibros / 5
    Escribir "Promedio de libros por estante: ", promedioLibrosEstante
    
FinAlgoritmo 

