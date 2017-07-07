require 'sinatra'
require './lib/generala'

@@dado1 = 1
@@dado2 = 1
@@dado3 = 1
@@dado4 = 1
@@dado5 = 1
@@jugador1 = ""

get "/generala" do
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

post "/guardarJugador1" do
    @@jugador1 = guardarNombreJ1(params['nombre_jug_1'])
    erb :tablero
end
