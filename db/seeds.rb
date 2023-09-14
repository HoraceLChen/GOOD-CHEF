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
  title: "Haiku of Flavours",
  price_pp: rand(50..300),
  cuisine: "Japanese",
  address: "St Kilda Road, Melbourne, Australia",
  description: "Chef Maya invites you to partake in an enchanting culinary voyage where flavours are the protagonists and each dish carries a chapter of its own.\nJoin Chef Maya on a journey of taste and tradition as she crafts a symphony of spices that tell tales of her culinary explorations.",
  img: "/assets/japanese2.jpg",
  user: user3
)

Offer.create(
  title: "The Botanic Plate",
  price_pp: rand(50..300),
  cuisine: "Modern Australian",
  address: "Richmond, Melbourne, Australia",
  description: "Discover the essence of Modern Australian dining at The Botanic Plate, located in the culinary heart of Melbourne. Our menu puts the spotlight on locally sourced ingredients, transforming them into inventive, mouth-watering dishes. Whether you're looking for a casual brunch or an elegant dinner, our inviting ambiance and a thoughtfully curated selection of wines promise an unforgettable experience you'll want to revisit.",
  img: "/assets/australian.jpg",
  user: user3
)


Offer.create(
  title: "Flavours of the Sea",
  price_pp: rand(50..300),
  cuisine: "Seafood",
  address: "Prahran, Melbourne, Australia",
  description: "Dive into flavours of the Sea: A Culinary Expedition with Chef Finn and embark on an oceanic journey where
   every dish tells the story of the deep blue.\nLet Chef Finn guide you through an exploration of maritime cuisine,
    where the freshest catches are transformed into exquisite creations that honor the bounties of the sea.
     From the briny scent of seaweed to the delicate sweetness of seafood, each bite embodies the essence of the ocean.
      Join us in savoring the maritime tales that Chef Finn masterfully weaves, as he unveils a culinary symphony of flavours
       that are as captivating as the open sea itself.",
  img: "/assets/seafood.jpg",
  user: user3
)
Offer.create(
  title: "Garden Feast",
  price_pp: rand(50..300),
  cuisine: "Greek",
  address: "Heidelberg, Victoria, Australia",
  description: "Chef Lily offers a farm-to-fork experience that captures the essence of Greek cuisine. Enjoy freshly harvested herbs and vegetables in a variety of traditional dishes, all crafted to bring you an authentic taste of Greece.",
  img: "/assets/greek.jpg",
  user: user3
)
Offer.create(
  title: "Umami Unveiled",
  price_pp: rand(50..300),
  cuisine: "Japanese",
  address: "Toorak, Victoria, Australia",
  description: "Chef Hiroshi fuses traditional Japanese culinary arts with modern flair. Explore the unique fifth taste, Umami, as you are guided through a handpicked selection of dishes that exemplify the art of Asian Fusion.",
  img: "/assets/japanese.jpg",
  user: user3
)
Offer.create(
  title: "Tableside Tales",
  price_pp: rand(50..300),
  cuisine: "Italian",
  address: "Parkville, Victoria, Australia",
  description: "Chef Hiroshi fuses traditional Japanese culinary arts with modern flair. Explore the unique fifth taste, Umami, as you are guided through a handpicked selection of dishes that exemplify the art of Asian Fusion.",
  img: "/assets/Italian.jpg",
  user: user3
)
Offer.create(
  title: "Leo's Gastronomia",
  price_pp: rand(50..300),
  cuisine: "Middle Eastern",
  address: "Bundoora, Victoria, Australia",
  description: "Experience the Middle East through Leo's Gastronomia. Chef Leo crafts a menu that transcends borders, showcasing the flavours and spices that define this rich culinary landscape. It's not just a meal, it's a flavourful expedition.",
  img: "/assets/middle_eastern.jpg",
  user: user3
)
Offer.create(
  title: "Spice Odyssey",
  price_pp: rand(50..300),
  cuisine: "Malaysian",
  address: "Preston, Victoria, Australia",
  description: "Step into Chef Jin's kitchen for a journey through Malaysia's aromatic spice trails. From tangy lemongrass to fiery chili, each dish is a testament to the country’s rich culinary heritage and the chef's masterful execution.",
  img: "/assets/malayspice.jpg",
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

puts "#{Offer.count} offers where created"
