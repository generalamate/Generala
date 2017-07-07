require 'sinatra'
require './lib/generala'

@@dados 

@@dado1 = 1
@@dado2 = 1
@@dado3 = 1
@@dado4 = 1
@@dado5 = 1
@@jugador1 = ""

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
