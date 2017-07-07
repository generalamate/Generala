require 'sinatra'
require './lib/generala'

@@dados 

@@dado1 = 1
@@dado2 = 1
@@dado3 = 1
@@dado4 = 1
@@dado5 = 4

@@n1 = 0
@@n2 = 0
@@n3 = 0
@@n4 = 0
@@n5 = 0
@@n6 = 0

@@jugador1 = ""
@@poker = ""

@@Generala = "Si"

get "/generala" do
    @@dado1 = 1
    @@dado2 = 1
    @@dado3 = 1
    @@dado4 = 1
    @@dado5 = 1
    erb :tablero
end

post "/tirar" do
    @@dado1 = obtenerValorDado
    @@dado2 = obtenerValorDado
    @@dado3 = obtenerValorDado
    @@dado4 = obtenerValorDado
    @@dado5 = obtenerValorDado
    @@poker = validaPoker
    inicializar_contador
    erb :tablero
end

get "/tirar/:dados" do |dados|
    @@dado1 = dados[0]
    @@dado2 = dados[1]
    @@dado3 = dados[2]
    @@dado4 = dados[3]
    @@dado5 = dados[4]
end

post "/guardarJugador1" do
    @@jugador1 = guardarNombreJ1(params['nombre_jug_1'])
    erb :tablero
end
