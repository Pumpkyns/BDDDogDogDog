# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
dog_list = []
dogsitter_list = []
city_list = []
10.times do
  
  city = City.create!(name: ['Paris', 'MTP', 'Nimes', 'BDX', 'St Gilles', 'Colmar', 'Lille', 'Nice', 'Ales','Narbonne','Strabourg'].sample)
  city_list << city 
  dog = Dog.create!(name: Faker::Name.first_name, city: city_list.sample)
  dog_list << dog
  dogsitter = Dogsitter.create!(name: Faker::FunnyName.name, city: city_list.sample)
  dogsitter_list << dogsitter
  
  Stroll.create!(dog: dog_list.sample, dogsitter: dogsitter_list.sample)

end

#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
