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
Pool.delete_all
User.delete_all

puts 'Seed: Seeding...'

user1 = User.create!(
  email: "malcolm@gmail.com",
  name: "Malcolm",
  password: "123456",
  password_confirmation: "123456"
)

user2 = User.create!(
  email: "janlosthisphone@yahoo.com",
  name: "Jan",
  password: "123456",
  password_confirmation: "123456"
)

user3 = User.create!(
  email: "hien.was.eaten.by.flora@gmail.com",
  name: "Hien",
  password: "123456",
  password_confirmation: "123456"
)

user4 = User.create!(
  email: "porschefan4@gmail.com",
  name: "Lily",
  password: "123456",
  password_confirmation: "123456"
)

user5 = User.create!(
  email: "porschefan5@gmail.com",
  name: "Peter",
  password: "123456",
  password_confirmation: "123456"
)
user6 = User.create!(
  email: "porschefan6@gmail.com",
  name: "Lulu",
  password: "123456",
  password_confirmation: "123456"
)

pool1 = Pool.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "Hampstead",
  user: user2,
  photo: 'https://images.unsplash.com/photo-1576336463225-18df4bee0e38?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80'
)

pool2 = Pool.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "Soho",
  user: user2,
  photo: 'https://images.unsplash.com/photo-1580794825872-339aa2de9558?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
)

pool3 = Pool.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "Richmond",
  user: user2,
  photo: 'https://images.unsplash.com/photo-1613977257365-aaae5a9817ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'
)

pool4 = Pool.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "Kensington",
  user: user2,
  photo: 'https://images.unsplash.com/photo-1603034203013-d532350372c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
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
  date: DateTime.strptime("14/06/2021 11:00", "%m/%d/%Y %H:%M"),
  confirmed: false
)


review1 = Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  booking_id: booking3
)

review2 = Review.create!(
  rating: 5,
  comment: "I'm so amazed!",
  booking_id: booking2
)

# review3 = Review.create!(
#   rating: 2,
#   comment: "Wow...What a lame pool! Stay far far away from this ToysRuS version of a pool",
#   booking_id: booking1
# )
# review4 = Review.create!(
#   rating: 3,
#   comment: "Meeeeh!",
#   booking_id: booking1
# )
# review5 = Review.create!(
#   rating: 5,
#   comment: "In love! I had a fantastic time.",
#   booking_id: booking2
# )
# review6 = Review.create!(
#   rating: 4,
#   comment: "Do it! You won't regret it",
#   booking_id: booking3
# )
# review7 = Review.create!(
#   rating: 1,
#   comment: "Worst experience of my life. It's nothing like the picture.",
#   booking_id: booking1
# )

puts 'Seed: Finished seeding!'
