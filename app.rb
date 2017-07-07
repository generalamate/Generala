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
    inicializar_contador
    @@dado1 = obtenerValorDado
    @@dado2 = obtenerValorDado
    @@dado3 = obtenerValorDado
    @@dado4 = obtenerValorDado
    @@dado5 = obtenerValorDado
    @@poker = validaPoker
    erb :tablero
end

get "/tirar/:dados" do |dados|
    inicializar_contador
    @@dado1 = dados[0].to_i
    @@dado2 = dados[1].to_i
    @@dado3 = dados[2].to_i
    @@dado4 = dados[3].to_i
    @@dado5 = dados[4].to_i
    @@poker = validaPoker
    erb:tablero
end

post "/guardarJugador1" do
    @@jugador1 = guardarNombreJ1(params['nombre_jug_1'])
    erb :tablero
end
