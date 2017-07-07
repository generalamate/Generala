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

When(/^Todos los dados tienen mismo valor$/) do
  pending # express the regexp above with the code you wish you had
end

