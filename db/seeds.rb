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

user2 = User.create(email: "lewagon@g.com", password: "lewagon", first_name: "Kai", last_name: "Kawano", role: "user")
user3 = User.create(email: "le_wagon@g.com", password: "le_wagon", first_name: "Horace", last_name: "Chen", role: "chef")
p user2
p user3
# puts "One user was created"

Offer.create(
  title: "A Taste of Melbourne",
  price_pp: rand(50..300),
  cuisine: "Australian, British",
  address: "Richmond, Victoria, Australia",
  description: "Embark on an unforgettable culinary voyage through the heart of Melbourne with A Taste of Melbourne: Join Chef Liam for a Culinary Journey.\nLet Chef Liam be your guide to the city's vibrant food scene, as he curates an experience that captures the very essence of Melbourne's diverse flavors.",
  img: "australian.jpg",
  user: user3
)
Offer.create(
  title: "Spices & Stories",
  price_pp: rand(50..300),
  cuisine: "Indian",
  address: "St Kilda Road, Melbourne, Australia",
  description: "Chef Maya invites you to partake in an enchanting culinary voyage where flavors are the protagonists and each dish carries a chapter of its own.\nJoin Chef Maya on a journey of taste and tradition as she crafts a symphony of spices that tell tales of her culinary explorations.",
  img: "/assets/indian.jpg",
  user: user3
)
Offer.create(
  title: "Flavors of the Sea",
  price_pp: rand(50..300),
  cuisine: "Seafood",
  address: "Prahran, Melbourne, Australia",
  description: "Dive into Flavors of the Sea: A Culinary Expedition with Chef Finn and embark on an oceanic journey where every dish tells the story of the deep blue.\nLet Chef Finn guide you through an exploration of maritime cuisine, where the freshest catches are transformed into exquisite creations that honor the bounties of the sea. From the briny scent of seaweed to the delicate sweetness of seafood, each bite embodies the essence of the ocean. Join us in savoring the maritime tales that Chef Finn masterfully weaves, as he unveils a culinary symphony of flavors that are as captivating as the open sea itself.",
  img: "/assets/seafood.jpg",
  user: user3
)
Offer.create(
  title: "Garden-to-Table Magic",
  price_pp: rand(50..300),
  cuisine: "Greek",
  address: "Heidelberg, Victoria, Australia",
  description: "Chef Lily's Fresh and Flavorful Cuisine",
  img: "/assets/greek.jpg",
  user: user3
)
Offer.create(
  title: "Umami Unveiled",
  price_pp: rand(50..300),
  cuisine: "Japanese",
  address: "Toorak, Victoria, Australia",
  description: "Chef Mei Ling's Asian Fusion Alchemy",
  img: "/assets/japanese.jpg",
  user: user3
)
Offer.create(
  title: "Tableside Tales",
  price_pp: rand(50..300),
  cuisine: "French",
  address: "Parkville, Victoria, Australia",
  description: "Chef Matilda's Culinary Chronicles and Conversations",
  img: "/assets/french.jpg",
  user: user3
)
Offer.create(
  title: "Leo's Gastronomic Safari",
  price_pp: rand(50..300),
  cuisine: "Middle Eastern",
  address: "Bundoora, Victoria, Australia",
  description: "Exploring Cuisines Beyond Borders",
  img: "/assets/middle_eastern.jpg",
  user: user3
)
Offer.create(
  title: "Malaysian Spice Odyssey",
  price_pp: rand(50..300),
  cuisine: "Malaysian",
  address: "Preston, Victoria, Australia",
  description: "Chef Amir's Journey Through Exquisite Flavors",
  img: "/assets/malaysian.jpg",
  user: user3
)

10.times do
  Booking.create!(
    date: "2023.08.15",
    status: "pending",
    offer: Offer.all.sample,
    user: user2,
    guests: 10
  )
end

puts "8 offers where created"
