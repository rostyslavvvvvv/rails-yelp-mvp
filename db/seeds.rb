# frozen_string_literal: true
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
dishoom = { name: "Dishoom", address: "London E2 7JE", phone_number: 045423, category: 'japanese', rating: 5 }
pizza_east =  { name: "Pizza East", address: "London E1 6PQ", phone_number: 03445423, category: 'japanese', rating: 4 }
boom = { name: "Boom", address: "Berlin", phone_number: 045423, category: 'japanese', rating: 4}
la_maison = { name: "La Maison", address: "Xberg", phone_number: 0o45423, category: 'japanese', rating: 3.5 }
burgermeister = { name: "Burgermeister", address: "Fshain", phone_number: 03445423, category: 'japanese', rating: 4.5 }

[dishoom, pizza_east, boom, la_maison, burgermeister].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
