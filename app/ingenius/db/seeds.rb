# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: 'Boda')
Category.create(name: 'Cumpleaños')
Category.create(name: 'Concierto')
Category.create(name: 'Fiesta en la Playa')

Place.create(name: 'Habana')
Place.create(name: 'Montevideo')

User.create(email: 'test@test.com', password: 'test123', password_confirmation: 'test123' )

images =[
    'https://images.pexels.com/photos/214328/pexels-photo-214328.jpeg?dl&fit=crop&w=640&h=341',
    'https://images.pexels.com/photos/214328/pexels-photo-214328.jpeg?dl&fit=crop&w=640&h=341',
    'https://images.pexels.com/photos/153951/pexels-photo-153951.jpeg?dl&fit=crop&w=640&h=426',
]

40.times do |t|
  Event.create(title: "Event " + Faker::Name.first_name,
               description: Faker::Lorem.paragraph(50),
               featured: false,
               image: images.sample,
               category: Category.offset(rand(Category.count)).first,
               place: Place.offset(rand(Place.count)).first)
end
