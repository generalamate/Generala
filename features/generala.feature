Feature: Tirar dado

Scenario: Iniciar juego
When Ingreso a la Generala
Then espero ver boton "Tirar"
And espero ver "Dado 1" es 1
And espero ver "Dado 2" es 1
And espero ver "Dado 3" es 1
And espero ver "Dado 4" es 1
And espero ver "Dado 5" es 1
And espero ver "Jugador 1"

Scenario: Ingresar nombre jugador 1
Given Ingreso a la Generala
When Guardo Jugador
Then espero ver "Jugador 1:" es Juanito

Scenario: Tirar dado
Given Ingreso a la Generala
When Tira dado
Then espero ver "Dado 1"
And espero ver "Dado 2"
And espero ver "Dado 3"
And espero ver "Dado 4"
And espero ver "Dado 5"
And espero ver "Jugador 1:" es Juanito

#Scenario: Valida generala
#Given Ingreso a la Generala
#When Tira todos los dados iguales
#Then espero ver "Generala" es "Si"


#Scenario: Seleccionar un dado
#Given Ingreso a la Generala
#And Tira dado
#When Selecciona "CheckDado 1"
#Then espero ver "CheckDado 1" Seleccionado











