# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0666737665", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06365257665", category: "chinese"}
mama_pizza =  {name: "Mama pizza", address: "81 rocade des monts d'or", phone_number: "06451257665", category: "chinese"}
big_mama =  {name: "Big mama", address: "11 boulevard de la lorraine", phone_number: "0637645265", category: "french"}
lalala =  {name: "Lalala", address: "somewhereeeee", phone_number: "06365257665", category: "japanese"}

[dishoom, pizza_east, mama_pizza, big_mama, lalala].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
