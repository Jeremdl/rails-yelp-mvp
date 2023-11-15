# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0000000000", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch East St, London E1 6PQ",  phone_number: "0000000000", category: "chinese"}
pizza_north =  {name: "Pizza North", address: "56A Shoreditch North St, London E1 6PQ",  phone_number: "0000000000", category: "japanese"}
pizza_south =  {name: "Pizza South", address: "56A Shoreditch South St, London E1 6PQ",  phone_number: "0000000000", category: "french"}
pizza_west =  {name: "Pizza West", address: "56A Shoreditch West St, London E1 6PQ",  phone_number: "0000000000", category: "belgian"}

seedlist = [dishoom, pizza_east,pizza_north, pizza_south, pizza_west]

seedlist.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
