# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  first_name = Faker::FunnyName.unique.name
  last_name = Faker::Name.unique.last_name
  gender = Faker::Gender.binary_type
  birthday = Faker::Date.unique.birthday
  Author.create(first_name: first_name)
  Author.create(last_name: last_name)
  Author.create(gender: gender)
  Author.create(birthday: birthday)
end
