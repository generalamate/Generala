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

