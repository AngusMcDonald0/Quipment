Equipment.destroy_all && User.destroy_all if Rails.env.development?

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

equipment = Equipment.create!(
  name: sport.sample,
  description: Faker::Quote.famous_last_words,
  category: categories.sample,
  location: locations.sample,
  user: users.sample
)

file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
equipment.photos.attach(io: file, filename: equipment.name)
puts "#{equipment.name} seeded"

5.times do |index|
  equipment = Equipment.create!(
    name: sport.sample,
    description: Faker::Quote.famous_last_words,
    category: categories.sample,
    location: locations.sample,
    user: users.sample,
    price: rand(5..50)
  )
  file = URI.open("https://source.unsplash.com/1300x900/?#{equipment.name}")
  equipment.photos.attach(io: file, filename: equipment.name)
  puts "#{equipment.name} seeded"
end
