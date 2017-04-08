# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: 'Weddings')
Category.create(name: 'Birthdays')
Category.create(name: 'Concerts')
Category.create(name: 'Party')

Place.create(name: 'Habana')
Place.create(name: 'Montevideo')

User.create(email: 'test@test.com', password: 'test123', password_confirmation: 'test123' )

40.times do |t|
  Event.create(title: "Event " + Faker::Name.name,
               description: Faker::Lorem.paragraph(2),
               image: Faker::Name.name,
               category: Category.offset(rand(Category.count)).first,
               place: Place.offset(rand(Place.count)).first)
end