# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning up database'
Pool.destroy_all
puts 'Database is clean'
puts 'Creating 5 fake pools...'
5.times do
  pool = Pool.create(
    location: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Quotes::Shakespeare.romeo_and_juliet_quote)
    # photo:"https://images.unsplash.com/photo-1543489822-c49534f3271f?ixid=MnwxMjA3fDB8MHxwaG90by1[…]GVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2978&q=80")
  pool.save!
end
puts 'Finished!'
