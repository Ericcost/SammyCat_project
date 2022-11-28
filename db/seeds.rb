# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


20.times do 
    Item.create!(
        title: Faker::Lorem.sentence(number: 1),
        description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
        price: Faker::Number.decimal(l_digits: 2),
        image_url: Faker::LoremFlickr.image(size: "50x60", search_terms: ['cats'])
end