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

puts "🍝 Seeding Users..."
10.times do
  user = User.create!(
    name: Faker::Food.dish,
    username: Faker::Artist.name
  )


  5.times do
    trip = Trip.create!(
      location: Faker::Food.ingredient,
      date: Faker::Food.measurement,
      user: user
    )
 
  5.times do
    Post.create!(
      caption: Faker::Food.ingredient,
      img_url: "https://hips.hearstapps.com/esq.h-cdn.co/assets/15/06/nrm_1423255129-pasta.jpg?resize=480:*",
      like: 0,
      trip: trip
    )
    end
end
end
puts "🎉 Done!"

