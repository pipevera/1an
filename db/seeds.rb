# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Post.destroy_all

5.times do
	Post.create(content: Faker::RickAndMorty.quote)
end

Post.all.each do |post|
	5.times do
		Comment.create(content: Faker::Hacker.say_something_smart, post_id: post.id)
	end
end
