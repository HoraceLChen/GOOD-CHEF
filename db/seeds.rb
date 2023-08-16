# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Offer.destroy_all
User.destroy_all
Booking.destroy_all

10.times do
  Offer.create(title: Faker::Food.dish, price_pp: rand(50..300), cuisine: Faker::Food.ethnic_category, description: Faker::Food.description)
  # + image
end

puts "Offers were created 10 times"

User.create(email: "lewagon@g.com", password: "lewagon", first_name: "Kai", last_name: "Kawano", role: "user")
User.create(email: "le_wagon@g.com", password: "le_wagon", first_name: "Horace", last_name: "Chen", role: "chef")
puts "One user was created"

Booking.create(date: "2023.08.15", status: "Booked")
puts "One booking was created"

puts "Seeds was successful"
