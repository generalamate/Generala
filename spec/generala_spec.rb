require './lib/generala'
describe "Generala" do
    it "obtener valor dado" do
      valor = obtenerValorDado
      expect(valor).to be_between(1,6)
    end

end
