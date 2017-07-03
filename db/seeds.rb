# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 @user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf",first_name: "Arjun", last_name: "Parth")
 puts "1 user created"

 AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf",first_name: "Admin", last_name: "Parth")
 puts "1 admin user created"

100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} raionale content", user_id: @user.id)
end

puts "100 posts has been created"