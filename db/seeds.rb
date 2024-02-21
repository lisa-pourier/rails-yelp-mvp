# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# My comments -- aborted trying this with Faker --
# require 'faker' #ASK is this needed?

# Faker::Name.name
# Faker::Address.full_address
# Faker::Restaurant.type
# Faker::Restaurant.review


puts "Creating restaurants..."
mango_mania = {name: "Mango Mania", address: "Oosterpark", category: "chinese"}
sweetest_potato = {name: "Sweetest Potato", address: "Rotterdam", category: "italian"}
water_wizard = {name: "Water Wizard", address: "Pays-Bas", category: "italian"}
oily_onions = {name: "Oily Onions", address: "Amsterdam", category: "italian"}
gracious_gelato = {name: "Gracious Gelato", address: "Oosterpark", category: "italian"}

[mango_mania, sweetest_potato, water_wizard, oily_onions, gracious_gelato].each do |attributes|
  restaurant = Restaurant.create!(attributes)
    review = Review.new({rating: 5, content: "Amazing"})
    review.restaurant = restaurant
    review.save!
  puts "Created #{restaurant.name}"
end
puts "Finished!"
