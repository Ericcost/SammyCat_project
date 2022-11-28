# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

picture = "https://images.pexels.com/photos/320014/pexels-photo-320014.jpeg?auto=compress&cs=tinysrgb&w=400"

20.times do 
    Item.create!(
        title: Faker::Lorem.sentence(word_count: 2),
        description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
        price: Faker::Number.number(digits: 2),
        image_url: picture
        )
end