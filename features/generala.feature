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







