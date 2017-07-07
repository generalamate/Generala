require './lib/generala'
describe "Generala" do
    it "obtener valor dado" do
      valor = obtenerValorDado
      expect(valor).to be_between(1,6)
    end

 it "guardar nombre Walter como jugador 1" do
      nombreJ1 = guardarNombreJ1("Walter") 
      expect(nombreJ1).to eq "Walter"   
 end
end
