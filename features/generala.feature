Feature: Tirar dado

Scenario: Iniciar juego
When Ingreso a la Generala
Then espero ver boton "Tirar"

Scenario: Tirar dado
Given Ingreso a la Generala
When Tira dado
Then espero ver "Valor obtenido"




