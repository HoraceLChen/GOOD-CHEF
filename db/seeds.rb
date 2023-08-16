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

10.times do
  Booking.create(
    date: "2023.08.15",
    status: "pending",
    offer_id: Offer.all.sample.id,
    user_id: user3.id,
    guests: 10
  )
end

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
  img: "australian.jpg",
  user_id: user3.id
)
Offer.create(
  title: "Spices & Stories",
  price_pp: rand(50..300),
  cuisine: "Indian",
  description: "An Evening with Chef Ava",
  img: "/assets/indian.jpg",
  user_id: user3.id
)
Offer.create(
  title: "Flavors of the Sea",
  price_pp: rand(50..300),
  cuisine: "Seafood",
  description: "Seafood Sensations by Chef Finn",
  img: "/assets/seafood.jpg",
  user_id: user3.id
)
Offer.create(
  title: "Garden-to-Table Magic",
  price_pp: rand(50..300),
  cuisine: "Greek",
  description: "Chef Lily's Fresh and Flavorful Cuisine",
  img: "/assets/greek.jpg",
  user_id: user3.id
)
Offer.create(
  title: "Umami Unveiled",
  price_pp: rand(50..300),
  cuisine: "Japanese",
  description: "Chef Mei Ling's Asian Fusion Alchemy",
  img: "/assets/japanese.jpg",
  user_id: user3.id
)
Offer.create(
  title: "Tableside Tales",
  price_pp: rand(50..300),
  cuisine: "French",
  description: "Chef Matilda's Culinary Chronicles and Conversations",
  img: "/assets/french.jpg",
  user_id: user3.id
)
Offer.create(
  title: "Leo's Gastronomic Safari",
  price_pp: rand(50..300),
  cuisine: "Middle Eastern",
  description: "Exploring Cuisines Beyond Borders",
  img: "/assets/middle_eastern.jpg",
  user_id: user3.id
)
Offer.create(
  title: "Malaysian Spice Odyssey",
  price_pp: rand(50..300),
  cuisine: "Malaysian",
  description: "Chef Amir's Journey Through Exquisite Flavors",
  img: "/assets/malaysian.jpg",
  user_id: user3.id
)
