# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
# puts "🗑 Deleting old Trips..."
Trip.destroy_all
User.destroy_all


user1 = User.create!(name: 'Adam', username: 'adam1')
user2 = User.create!(name: 'Vivek', username: 'vik')


# puts "🍝 Seeding Users..."
# 2.times do
#   user = User.create!(
#     name: Faker::Food.dish,
#     username: Faker::Artist.name
#   )

trip1 = Trip.create!(location: "London", date: "11/12", user: user1)
trip2 = Trip.create!(location: "New York", date: "9/15", user: user1)

#   2.times do
#     trip = Trip.create!(
#       location: Faker::Food.ingredient,
#       date: Faker::Food.measurement,
#       user: user
#     )

post1 = Post.create!(caption: 'Great Trip', img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/City_of_London%2C_seen_from_Tower_Bridge.jpg/250px-City_of_London%2C_seen_from_Tower_Bridge.jpg', like: 0, trip: trip1)
post2 = Post.create!(caption: "So many rats", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Lower_Manhattan_skyline_-_June_2017.jpg/268px-Lower_Manhattan_skyline_-_June_2017.jpg", like: 0, trip: trip2)

post3 = Post.create!(caption: 'Big Smoke', img_url: 'https://cdn.londonandpartners.com/visit/general-london/areas/river/76709-640x360-houses-of-parliament-and-london-eye-on-thames-from-above-640.jpg', like: 0, trip: trip1)
post4 = Post.create!(caption: "Big Apple", img_url: "https://untappedcities.com/wp-content/uploads/2017/11/Staten-Island-Ferry-NYC_3.jpg", like: 0, trip: trip2)

#   2.times do
#     Post.create!(
#       caption: Faker::Food.ingredient,
#       img_url: Faker::Avatar.image,
#       like: 0,
#       trip: trip
#     )
#     end
# end
# end
puts "🎉 Done!"

