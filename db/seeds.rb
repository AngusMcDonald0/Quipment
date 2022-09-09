Equipment.destroy_all && User.destroy_all if Rails.env.development?

# Creating the users
james = User.create!(
  email: "james@dickys.com",
  password: "abcdef",
  password_confirmation: "abcdef"
)

angus = User.create!(
  email: "angus1@test.com",
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
  name: "Angus' Spalding Basketball",
  description: "The best basketball in the world, NBA Standardized. Fully pumped and ready to be played.",
  category: "Indoor",
  location: "Melbourne",
  user: angus,
  price: 20
)

# PHOTO 1
file = URI.open("https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcS7BIjBaMWIc73cx8666qAMP6xuKcDzByeDMDK5Dnj7yuyR6hqu09Oryd1WI5ZqRdjHYyvMbMp7vsI&usqp=CAc")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 2
file = URI.open("https://res-5.cloudinary.com/russell-corp-australia-pty-ltd/image/upload/c_lpad,dpr_2.0,f_auto,h_400,q_auto,w_400/media/catalog/product/5/1/5167-NBL_Replica-NBL-Game-Ball-Series_S2_g7j1ka.jpg")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 3
file = URI.open("https://res-3.cloudinary.com/russell-corp-australia-pty-ltd/image/upload/c_lpad,dpr_2.0,f_auto,h_400,q_auto,w_400/media/catalog/product/5/1/5167-ba-2-nsw_tf-grind-nsw_s1_1.jpg")
equipment.photos.attach(io: file, filename: equipment.name)

puts "#{equipment.name} seeded"

# SEED CREATE
equipment = Equipment.create!(
  name: "Tony's Mikasa Volleyball",
  description: "Japanese-based company, producing the world class volleyball around the world. Good condition and ready to be played",
  category: "Indoor",
  location: "Geelong",
  user: tony,
  price: 15
)

# PHOTO 1
file = URI.open("https://d4iqe7beda780.cloudfront.net/resources/static/main/image/ws940446.jpg")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 2
file = URI.open("https://m.media-amazon.com/images/I/71xpDeKcPjL.jpg")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 3
file = URI.open("https://m.media-amazon.com/images/I/71HjPv1N6eS.jpg")
equipment.photos.attach(io: file, filename: equipment.name)

puts "#{equipment.name} seeded"

# SEED CREATE
equipment = Equipment.create!(
  name: "Chris' Titleist V1 Golf Ball",
  description: "PGA-graded golf balls. Set of 10.",
  category: "Indoor Golf",
  location: "Canberra",
  user: chris,
  price: 5
)

# PHOTO 1
file = URI.open("https://www.golfworld.com.au/assets/full/BAAN208_0571448027.png?20210723102646")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 2
file = URI.open("https://houseofgolf.com.au/hog/wp-content/uploads/2021/05/titleist-2021-pro-v1x-golf-ball-single-ball-white-hero-700x700.jpg")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 3
file = URI.open("https://pga-tour-res.cloudinary.com/image/upload/c_fill,dpr_3.0,f_auto,g_center,h_393,q_auto,w_713/v1/pgatour/editorial/2019/02/26/titleist-847-tursky.jpg")
equipment.photos.attach(io: file, filename: equipment.name)

puts "#{equipment.name} seeded"

# SEED CREATE
equipment = Equipment.create!(
  name: "James' Glider Soccer Ball",
  description: "Wanted to rent this hourly, as it is only collecting dust in my garage.",
  category: "Indoor & Outdoor",
  location: "Perth",
  user: james,
  price: 15
)

# PHOTO 1
file = URI.open("https://assets.adidas.com/images/w_600,f_auto,q_auto/d30ada86204a48ef912ca7f500d2d487_9366/Tango_Glider_Ball_White_S12241_01_standard.jpg")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 2
file = URI.open("https://www.rebelsport.com.au/dw/image/v2/BBRV_PRD/on/demandware.static/-/Sites-srg-internal-master-catalog/default/dw116fbf8a/images/39501201/Rebel_39501201_whiteblack_hi-res.jpg?sw=558&sh=558&sm=fit")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 3
file = URI.open("https://thefootballfactory.com.au/wp-content/uploads/2022/01/S12241.jpg")
equipment.photos.attach(io: file, filename: equipment.name)

puts "#{equipment.name} seeded"


equipment = Equipment.create!(
  name: "James' Table Tennis Ball",
  description: "Good ping-pong ball in general. In a very good condition.",
  category: "Indoor",
  location: "Adelaide",
  user: james,
  price: 5
)

# PHOTO 1
file = URI.open("https://m.media-amazon.com/images/I/71OUThFusOL.jpg")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 2
file = URI.open("https://i.ebayimg.com/images/g/K38AAOSwHn9bo6TG/s-l500.jpg")
equipment.photos.attach(io: file, filename: equipment.name)
# PHOTO 3
file = URI.open("https://gophersport.com/media/catalog/product/cache/0275eb5569a157a27ce082f07be215e8/g/-/g-16979-stiga2star.jpeg")
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
