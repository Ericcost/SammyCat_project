# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


20.times do
	Item.create!(
		title: Faker::Lorem.characters(number: rand(5..25)),
		description: Faker::Lorem.sentence(word_count: rand(5..25)),
		price: rand(0..100),
		image_url: Faker::LoremFlickr.image(size: "50x60", search_terms: ['cats']))
end