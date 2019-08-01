# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
dog_list = []
dogsitter_list = []
city_list = []
city = ['Paris', 'MTP', 'Nimes', 'BDX', 'St Gilles', 'Colmar', 'Lille', 'Nice', 'Ales','Narbonne','Strabourg']
city.each do |city|
  City.create!(name: city)
end
100.times do
  
  dog = Dog.create!(name: Faker::Name.first_name, city: City.all.sample)
  dog_list << dog
  dogsitter = Dogsitter.create!(name: Faker::FunnyName.name, city: City.all.sample)
  dogsitter_list << dogsitter
  
  Stroll.create!(dog: dog_list.sample, dogsitter: dogsitter_list.sample)

end

#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
