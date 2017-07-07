When(/^Ingreso a la Generala$/) do
  visit '/generala' 
end

Then(/^espero ver boton "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end


Then(/^espero ver "(.*?)"$/) do |texto|
 last_response.body.should =~ /#{texto}/m
end



When(/^Tira dado$/) do 
  click_button("Tirar")
end


Then(/^espero ver "(.*?)" es (\d+)$/) do |dado, valor|
  texto = dado + ":" + valor
  last_response.body.should =~ /#{texto}/m
end

<<<<<<< HEAD
When(/^Todos los dados tienen mismo valor$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^Tira todos los dados iguales$/) do
  visit '/tirar/22222'
end

=======
When(/^Guardo Jugador$/) do
  click_button("Guardar Jugador 1")
end


Then(/^espero ver "(.*?)" es Juanito$/) do |nombre|
  last_response.body.should =~ /#{nombre}/m
end


>>>>>>> f786c35bb47c5076aaa46ce2a9dbf72fe2289dbd

