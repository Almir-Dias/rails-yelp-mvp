# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
dishoom =     {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'french'}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'belgian'}
almir_food =  {name: "Almir Food", address: "Moema, ao lado do shopping Ibirapuera", category: 'italian'}
coringao =    {name: "Coringão", address: "Zona leste, próximo ao metro Itaquera ", category: 'japanese'}
nike =        {name: "Nike Food", address: "Ipiranga, bem perto do colégio Maria Imaculada", category: 'chinese'}


[dishoom, pizza_east, almir_food,  coringao, nike].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"