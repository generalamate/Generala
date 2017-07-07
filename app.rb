require 'sinatra'
require './lib/generala'

@@dado1 = 0

get "/generala" do
    erb :tablero
end

post "/tirar" do
    @@dado1 = obtenerValorDado
    erb :tablero
end
