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

Review.destroy_all
Booking.destroy_all
Pool.destroy_all
User.destroy_all

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
  description: "The pool is private in a beautiful backyard in Hampstead London. There are lounge chairs to relax in the sun and a table, umbrella with chairs. Please contact me for availability and information before booking .Please read all information on my site. Thank you.",
  location: "Hampstead",
  user: user1,
  price: "145",
  title: "Attractive pool in Burbank Heat",
  # photo: 'https://images.unsplash.com/photo-1576336463225-18df4bee0e38?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80'
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621539597/pool1_ccoltw.jpg')
pool1.photo.attach(io: file, filename: 'pool1_ccoltw.jpg', content_type: 'image/jpg')
pool1.save!


pool2 = Pool.create!(
  description: "Our pool with attached spa is surrounded by cedar and oak trees, greenery, fragrant flowers and a mountain view, making it very private and relaxing. It's on the lowest level of our three-level backyard. The other areas include a concrete patio with a table, chairs and an umbrella, and a large brick patio with more seating, a firepit and a barbeque.",
  location: "Soho",
  user: user1,
  price: "150",
  title: "Private Oasis Among the Trees",
  # photo: 'https://images.unsplash.com/photo-1580794825872-339aa2de9558?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621539753/pool2_hxuon0.jpg')
pool2.photo.attach(io: file, filename: 'pool2_hxuon0.jpg', content_type: 'image/jpg')
pool2.save!

pool3 = Pool.create!(
  description: "This pool is located on a property like you won't see anywhere else in London. It's a beautiful escape where you truly feel like you are in another country. It's surrounded by lush tropical greenery and is overlooked by an historic mediterranean style villa, the oldest home built in the area!",
  location: "Richmond",
  user: user2,
  price: "160",
  title: "Incredible Londonian Escape",
  # photo: 'https://images.unsplash.com/photo-1613977257365-aaae5a9817ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'
)

require "open-uri"
file = URI.open('https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621539969/pool3_qtse3s.jpg')
pool3.photo.attach(io: file, filename: 'pool3_qtse3s.jpg', content_type: 'image/jpg')
pool3.save!

pool4 = Pool.create!(
  description: "The pool is private in a beautiful backyard in South London. There are lounge chairs to relax in the sun and a table, umbrella with chairs. Please contact me for availability and information before booking .Please read all information on my site. Thank you",
  location: "Kensington",
  user: user2,
  price: "160",
  title: "Incredible Londonian Escape",
  # photo: 'https://images.unsplash.com/photo-1603034203013-d532350372c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
)

require "open-uri"
file = URI.open('https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621540038/pool4_tpn5dw.jpg')
pool4.photo.attach(io: file, filename: 'pool4_tpn5dw.jpg', content_type: 'image/jpg')
pool4.save!

pool5 = Pool.create!(
  description: "This pool is designed for nice supervised area full of fun",
  location: "South London",
  user: user3,
  price: "110",
  title: "Deep pool in the mountains with a beautiful city view",
  # photo: 'https://images.unsplash.com/photo-1603034203013-d532350372c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
)

require "open-uri"
file = URI.open('https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621540347/pool5_rm5pyq.jpg')
pool5.photo.attach(io: file, filename: 'pool5_rm5pyq.jpg', content_type: 'image/jpg')
pool5.save!

pool6 = Pool.create!(
  description: "Enjoy family swim time , heated pool ( when premium heater amenity is selected ) charges will apply *please note if not selected heated pool will not be available . Bbq grill access must bring propane preferably 16 oz . Covered patio set . Lounge area to gather . Sun lounges . pool 2 ft to 9 ft , beautiful sun deck , basket ball court .covid 19 precautious",
  location: "Shoreditch",
  user: user3,
  price: "185",
  title: "New pool oasis/rsvp heated pool",
  # photo: 'https://images.unsplash.com/photo-1603034203013-d532350372c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
)

require "open-uri"
file = URI.open('https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621540448/pool6_ghdsap.jpg')
pool6.photo.attach(io: file, filename: 'pool6_ghdsap.jpg', content_type: 'image/jpg')
pool6.save!

pool7 = Pool.create!(
  description: "Medium size pool 4’ - 8’ with diving board. A waterfall recycles with the pool. Large patio area and outside enclosed shower w/ urinal so no need to come inside the house. Privacy!",
  location: "Camden",
  user: user4,
  price: "250",
  title: "Pool you ‘ll love!",
  # photo: 'https://images.unsplash.com/photo-1603034203013-d532350372c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
)

require "open-uri"
file = URI.open('https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621540521/pool7_i2xahe.jpg')
pool7.photo.attach(io: file, filename: 'pool7_i2xahe.jpg', content_type: 'image/jpg')
pool7.save!

pool8 = Pool.create!(
  description: "Baja pool for small kids and non swimmers Pool side bar area for drinks and snacks 8.5 foot deep pool for diving and cannon balls! Use our WiFi to connect to our outside surround sound speakers!! We keep our pool and spa heated 24/7 all year long, even in the winter time! Come and enjoy it!!! Animal tour of my ranch is extra. And it’s hands on, behind the scenes. We have over 200+ animals. Reptiles, birds, camels, horses, alpacas, and much much more!!",
  location: "London Bridge",
  user: user4,
  price: "200",
  title: "Heated Pool, Spa, Slide, Animals",
  # photo: 'https://images.unsplash.com/photo-1603034203013-d532350372c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
)

require "open-uri"
file = URI.open('https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621540611/pool8_pcc2pm.jpg')
pool8.photo.attach(io: file, filename: 'pool8_pcc2pm.jpg', content_type: 'image/jpg')
pool8.save!

pool9 = Pool.create!(
  description: "Great place for safe clean family get-togethers. Big patio, 3 tables, Propane BBQ, Clean Private Bathroom.",
  location: "Killburn",
  user: user4,
  price: "222",
  title: "Clean Safe place 4 Fam parties",
  # photo: 'https://images.unsplash.com/photo-1603034203013-d532350372c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'
)

require "open-uri"
file = URI.open('https://res.cloudinary.com/dkgzrlgdu/image/upload/v1621540903/pool9_cfraop.jpg')
pool9.photo.attach(io: file, filename: 'pool9_cfraop.jpg', content_type: 'image/jpg')
pool9.save!


booking1 = Booking.create!(
  user: user1,
  pool: pool1,
  date: '2021-05-20 11:00:00',
  confirmed: true
)

booking2 = Booking.create!(
  user: user2,
  pool: pool2,
  date: '2021-05-24 10:00:00',
  confirmed: true
)

booking3 = Booking.create!(
  user: user3,
  pool: pool3,
  date: '2021-05-24 11:30:00',
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
