# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seed: Deleting existing records...'

Review.delete_all
Booking.delete_all
Boat.delete_all
User.delete_all

puts 'Seed: Seeding...'

user1 = User.create!(
  email: "malcolm@gmail.com",
  first_name: "Malcolm",
  last_name: "The Rich",
  password: "123456",
  password_confirmation: "123456"
)

user2 = User.create!(
  email: "janlosthisphone@yahoo.com",
  first_name: "Jan",
  last_name: "Losthisphone",
  password: "123456",
  password_confirmation: "123456"
)

user3 = User.create!(
  email: "hien.was.eaten.by.flora@gmail.com",
  first_name: "Hien",
  last_name: "Flora",
  password: "123456",
  password_confirmation: "123456"
)

user4 = User.create!(
  email: "porschefan4@gmail.com",
  first_name: "Porsche4",
  last_name: "Fan",
  password: "123456",
  password_confirmation: "123456"
)

user5 = User.create!(
  email: "porschefan5@gmail.com",
  first_name: "Porsche5",
  last_name: "Fan",
  password: "123456",
  password_confirmation: "123456"
)
user6 = User.create!(
  email: "porschefan6@gmail.com",
  first_name: "Porsche6",
  last_name: "Fan",
  password: "123456",
  password_confirmation: "123456"
)

pool1 = Pool.create!(
  title: "Sail True French Coast",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  address: "157 Rue du Vallon des Auffes, 13007 Marseille, Franceherok",
  user: user2,
  remote_photo_url: 'https://res.cloudinary.com/shanlongjj/image/upload/v1534435886/BoatsSeeds/shaah-shahidh-557311-unsplash.jpg'
)


booking1 = Booking.create!(
  user: user1,
  pool: pool1,
  date: DateTime.strptime("04/04/2021 11:00", "%m/%d/%Y %H:%M"),
  confirmed: true
)

booking2 = Booking.create!(
  user: user2,
  pool: pool2,
  date: DateTime.strptime("12/05/2021 10:00", "%m/%d/%Y %H:%M"),
  confirmed: true
)

booking3 = Booking.create!(
  user: user3,
  pool: pool3,
  date: DateTime.strptime("04/04/2021 11:00", "%m/%d/%Y %H:%M"),
  confirmed: true
)


review1 = Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  boat: boat1
)

review2 = Review.create!(
  rating: 5,
  comment: "I'm so amazed!",
  user: user2,
  boat: boat2
)

review3 = Review.create!(
  rating: 2,
  comment: "Wow...What a lame boat! Stay far far away from this ToysRuS version of a boat",
  user: user2,
  boat: boat2
)
review4 = Review.create!(
  rating: 3,
  comment: "Meeeeh!",
  user: user4,
  boat: boat2
)
review5 = Review.create!(
  rating: 5,
  comment: "In love! I had a fantastic time.",
  user: user3,
  boat: boat2
)
review6 = Review.create!(
  rating: 4,
  comment: "Do it! You won't regret it",
  user: user3,
  boat: boat2
)
review7 = Review.create!(
  rating: 1,
  comment: "Worst experience of my life. It's nothing like the picture.",
  user: user2,
  boat: boat3
)
review8 = Review.create!(
  rating: 5,
  comment: "Do it! You won't regret it",
  user: user8,
  boat: boat4
)
review9 = Review.create!(
  rating: 4,
  comment: "It's ok",
  user: user4,
  boat: boat5
)
review10 = Review.create!(
  rating: 5,
  comment: "One of the best. Would come back",
  user: user5,
  boat: boat12
)
review11 = Review.create!(
  rating: 3,
  comment: "Mas o menos. ",
  user: user2,
  boat: boat6
)
review12 = Review.create!(
  rating: 4,
  comment: "Do it! You won't regret it",
  user: user6,
  boat: boat6
)
review13 = Review.create!(
  rating: 4,
  comment: "Do it! You won't regret it",
  user: user7,
  boat: boat7
)
review14 = Review.create!(
  rating: 1,
  comment: "Booh! I want my money back",
  user: user8,
  boat: boat12
)
review15 = Review.create!(
  rating: 4,
  comment: "Do it! You won't regret it",
  user: user1,
  boat: boat12
)
review16 = Review.create!(
  rating: 5,
  comment: "Best of the best",
  user: user2,
  boat: boat13
)
review17 = Review.create!(
  rating: 3,
  comment: "I would recommend it",
  user: user2,
  boat: boat14
)
review18 = Review.create!(
  rating: 4,
  comment: "Do it! You won't regret it",
  user: user3,
  boat: boat17
)
review19 = Review.create!(
  rating: 2,
  comment: "No way, Jose. That was not a boat.",
  user: user4,
  boat: boat18
)
review20 = Review.create!(
  rating: 2,
  comment: "Hated it. The boat moves a lot.",
  user: user4,
  boat: boat20
)

puts 'Seed: Finished seeding!'
