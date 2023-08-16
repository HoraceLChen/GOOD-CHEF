# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Offer.destroy_all
# User.destroy_all
# Booking.destroy_all

user2 = User.create(email: "lewagon@g.com", password: "lewagon", first_name: "Kai", last_name: "Kawano", role: "user")
user3 = User.create(email: "le_wagon@g.com", password: "le_wagon", first_name: "Horace", last_name: "Chen", role: "chef")
# puts "One user was created"

# 10.times do
#   Offer.create(
#     title: Faker::Food.dish,
#     price_pp: rand(50..300),
#     cuisine: Faker::Food.ethnic_category,
#     description: Faker::Food.description,
#     user_id: user3.id
#   )
#   # + image
#   Booking.create(
#     date: "2023.08.15",
#     status: "pending",
#     offer_id: Offer.all.sample.id,
#     user_id: user2.id,
#     guests: 10
#   )
# end

# puts "Offers were created 10 times"


# puts "One booking was created"

# puts "Seeds was successful"
Offer.create(
  title: "A Taste of Melbourne",
  price_pp: rand(50..300),
  cuisine: "Australian, British",
  description: "Join Chef Liam for a one-of-a-kind Culinary Journey",
  user_id: user3.id
)
Offer.create(
  title: "Spices & Stories",
  price_pp: rand(50..300),
  cuisine: "Indian",
  description: "An Evening with Chef Ava",
  user_id: user3.id
)
Offer.create(
  title: "Flavors of the Sea",
  price_pp: rand(50..300),
  cuisine: "Seafood",
  description: "Seafood Sensations by Chef Finn",
  user_id: user3.id
)
Offer.create(
  title: "Garden-to-Table Magic",
  price_pp: rand(50..300),
  cuisine: "Greek",
  description: "Chef Lily's Fresh and Flavorful Cuisine",
  user_id: user3.id
)
