# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(
first_name: Faker::Name.first_name,
last_name: Faker::Name.last_name,
password: "password",
email: "email@email.com",
role: "chef"
)

User.create(
first_name: Faker::Name.first_name,
last_name: Faker::Name.last_name,
password: "password",
email: "email@email.com",
role: "customer"
)

10.times do
  Offer.create(title: Faker::Food.dish, price_pp: rand(50..300), cuisine: Faker::Food.ethnic_category, description: Faker::Food.description, user_id: 1)
end
# 10.times do
#   Booking.create(
#     date: '2023-09-23', status: "pending", offer_id: rand(1...3), user_id: rand(1...3)
#   )
# end
