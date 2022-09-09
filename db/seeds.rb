Equipment.destroy_all && User.destroy_all if Rails.env.development?

# Creating the users
james = User.create!(
  email: "james@dickys.com",
  password: "abcdef",
  password_confirmation: "abcdef"
)

angus = User.create!(
  email: "angus@test.com",
  password: "123456",
  password_confirmation: "123456"
)

chris = User.create!(
  email: "chris@dickys.com",
  password: "abcdef",
  password_confirmation: "abcdef"
)

tony = User.create!(
  email: "tony@dickys.com",
  password: "abcdef",
  password_confirmation: "abcdef"
)

users = [james, angus, chris, tony]
categories = ["Outdoor", "Indoor", "Water", "Moutain", "Snow", "Fire"]
locations = ["Melbourne", "Richmond", "South Yarra", "Kew", "Saint Kilda", "Torquay"]
sport = ["Boxing Gloves", "Snowboard", "Football", "soccerball"]

# SEED CREATE
equipment = Equipment.create!(
  name: "Spalding Basketball GG7",
  description: "The best basketball in the world, NBA Standardized. Fully pumped and ready to be played.",
  category: "Indoor",
  location: "Melbourne",
  user: angus,
  price: "$ 20"
)

# PHOTO 1
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 2
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 3
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)

puts "#{equipment.name} seeded"

# SEED CREATE
equipment = Equipment.create!(
  name: "Mikasa Volleyball",
  description: "Japanese-based company, producing the world class volleyball around the world. Good condition and ready to be played",
  category: "Indoor",
  location: "Geelong",
  user: james,
  price: "$ 15"
)

# PHOTO 1
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 2
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 3
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)

puts "#{equipment.name} seeded"

# SEED CREATE
equipment = Equipment.create!(
  name: "Titleist V1 Golf Ball",
  description: "PGA-graded golf balls. Set of 10.",
  category: "Indoor Golf",
  location: "Canberra",
  user: chris,
  price: "$ 5"
)

# PHOTO 1
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 2
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 3
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)

puts "#{equipment.name} seeded"

# SEED CREATE
equipment = Equipment.create!(
  name: "Adidas Glider Soccer Ball",
  description: "Wanted to rent this hourly, as it is only collecting dust in my garage.",
  category: "Indoor & Outdoor",
  location: "Perth",
  user: james,
  price: "$ 15"
)

# PHOTO 1
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 2
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 3
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)

puts "#{equipment.name} seeded"


equipment = Equipment.create!(
  name: "Stiga Table Tennis Ball",
  description: "Good ping-pong ball in general. In a very good condition.",
  category: "Indoor",
  location: "Adelaide",
  user: james,
  price: "$ 15"
)

# PHOTO 1
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 2
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 3
file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)

puts "#{equipment.name} seeded"
## FAKER CODE
# equipment = Equipment.create!(
#   name: sport.sample,
#   description: Faker::Quote.famous_last_words,
#   category: categories.sample,
#   location: locations.sample,
#   user: users.sample
# )

# file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
# equipment.photos.attach(io: file, filename: equipment.name)
# puts "#{equipment.name} seeded"

# 5.times do |index|
#   equipment = Equipment.create!(
#     name: sport.sample,
#     description: Faker::Quote.famous_last_words,
#     category: categories.sample,
#     location: locations.sample,
#     user: users.sample,
#     price: rand(5..50)
#   )
#   file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
#   equipment.photos.attach(io: file, filename: equipment.name)
#   puts "#{equipment.name} seeded"
# end
