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
  photo: 'https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621076645/joe-ciciarelli-08AJKJf75kw-unsplash_wqylq8.jpg'
)

pool2 = Pool.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "Soho",
  user: user2,
  photo: 'https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621076507/gregory-gapare-U53rV8r-6zY-unsplash_bdw2oq.jpg'
)

pool3 = Pool.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "Richmond",
  user: user2,
  # photo: 'https://images.unsplash.com/photo-1613977257365-aaae5a9817ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'
)

pool4 = Pool.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "Kensington",
  user: user2,
  # photo: 'https://images.unsplash.com/photo-1603034203013-d532350372c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
)

booking1 = Booking.create!(
  user: user1,
  pool: pool1,
  date: '2021-04-04 11:00:00',
  confirmed: true
)

booking2 = Booking.create!(
  user: user2,
  pool: pool2,
  date: '2021-06-14 10:00:00',
  confirmed: true
)

booking3 = Booking.create!(
  user: user3,
  pool: pool3,
  date: '2021-07-29 11:30:00',
  confirmed: false
)


# review1 = Review.create!(
#   rating: 5,
#   comment: "That trip was a wonderful experience!",
#   booking_id: booking3
# )

# review2 = Review.create!(
#   rating: 5,
#   comment: "I'm so amazed!",
#   booking_id: booking2
# )

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
