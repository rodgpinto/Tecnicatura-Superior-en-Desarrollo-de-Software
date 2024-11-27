Algoritmo PintoRodrigoPFO3
	Definir i, j, m, num, edad Como Entero; 
	Definir x, nombre Como Caracter; 
	Definir salir Como Logico
	Dimension i[20];
	Dimension x[20];
	num = 0;
	salir = Verdadero; 
	m = 0;
	
	Escribir "A continuación, se le va a solicitar nombre y edad de los alumnos, para salir utilice `*`";
		Repetir
			Escribir "Ingrese el nombre, para salir puede utilizar `*`";
			Escribir "Ingrese Nombre, Alumno: ", num + 1;
			Leer nombre
			
			Mientras nombre = "" Hacer
				Borrar Pantalla
				Escribir "Recuerde que para salir, debe ingresar asterisco `*`";
				Escribir  "Ingrese Nombre correcto, Alumno número: ", num + 1;
				Leer nombre;
			FinMientras
			
			Si nombre <> "*" Entonces
				Borrar Pantalla;
				x[num] = nombre;
				Escribir "Ingrese edad";
				Leer edad;
				
				Mientras edad < 1 Hacer
					Borrar Pantalla;
					Escribir  "Ingrese edad correcta";
					Leer edad;
				FinMientras
				
				i[num] = edad	;
				num = num + 1 ;
				Borrar Pantalla;
				
			Sino 	
				
				Borrar Pantalla;
				salir = falso;
				
			FinSi
			
			Si num = 20 Entonces
				salir = Falso;
			FinSi
			m = edad;
			
		Hasta Que salir = Falso;
		
		Escribir "La cantidad total de Alumnos en el curso es de: ", num;
		Escribir "";
		
		Para j <- 0 Hasta num - 1 Con Paso 1 Hacer
			Si  i[j] > m Entonces
				m = i[j];	
			FinSi
		FinPara
		Escribir "Los alumnos con mayor edad son: ";
		j=0;
		Para j <- 0 Hasta num - 1 Con Paso 1 Hacer
			Si m = i[j] Entonces
				Escribir "Alumno: ",x[j],", con ",i[j]," años.";
			FinSi
		FinPara		
FinAlgoritmo
