require 'sinatra'
require './lib/generala'

@@dado1 = 0
@@dado2 = 0
@@dado3 = 0
@@dado4 = 0
@@dado5 = 0

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
