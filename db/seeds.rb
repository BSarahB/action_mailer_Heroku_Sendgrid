require 'faker'



10.times do
	User.create(name: Faker::Name.name, email: Faker::Internet.email)
end
puts "on cree 10 users "