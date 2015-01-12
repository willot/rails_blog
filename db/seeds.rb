# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do 
	User.create!(pseudo: Faker::Name.first_name, email: Faker::Internet.email, password: "test", password_confirmation: "test") 
	
end

5.times do 
	Post.create!(title: Faker::Lorem.word, content: Faker::Lorem.paragraph, user_id: rand(1..5))
end	