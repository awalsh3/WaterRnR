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
  description: "From summer days spent lounging by the pool to atmospheric evenings huddled around the fire pit, this luxury self-catering pool in Hampstead was designed with large family gatherings in mind.",
  location: "Hampstead",
  user: user2,
  photo: 'https://images.unsplash.com/photo-1576336463225-18df4bee0e38?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80',
)
pool2 = Pool.create!(
  description: "A home since the 1640s, this Grade-II listed country manor is a home where relaxation, fun and time spent together are centre-stage. Lap the indoor heated swimming pool before breakfast, warm bones in the infrared sauna and challenge friends to a game of snooker over a tipple or two. ",
  location: "Soho",
  user: user2,
  photo: 'https://images.unsplash.com/photo-1580794825872-339aa2de9558?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80',
)
pool3 = Pool.create!(
  description: "When the moon rises, bare all to the night sky and slide into the outdoor swimming pool, floating between the shimmering reflections of the constellations. ",
  location: "Richmond",
  user: user2,
  photo: 'https://images.unsplash.com/photo-1613977257365-aaae5a9817ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'
)
pool4 = Pool.create!(
  description: "Swathes of woodland, colourful flower borders and an enclosed, suntrap spa area including an outdoor swimming pool; what more could one want for a luxury family self-catering escape?",
  location: "Kensington",
  user: user2,
  photo: 'https://images.unsplash.com/photo-1603034203013-d532350372c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
)

booking1 = Booking.create!(
  user: user1,
  pool: pool2,
  date: '2021-04-04 11:00:00',
  confirmed: true
)

booking2 = Booking.create!(
  user: user2,
  pool: pool3,
  date: '2021-06-14 10:00:00',
  confirmed: true
)

booking3 = Booking.create!(
  user: user1,
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
