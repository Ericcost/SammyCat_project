# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


20.times do
	Item.create!(
		title: Faker::JapaneseMedia::StudioGhibli.character,
		description: Faker::JapaneseMedia::StudioGhibli.quote,
		price: rand(0..100000),
		image_url: "https://cdn.discordapp.com/attachments/1031448762956124210/1047831103026774056/776213.jpg")
end