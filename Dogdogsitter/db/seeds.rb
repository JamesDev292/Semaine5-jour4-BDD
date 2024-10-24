# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Dog.destroy_all
Stroll.destroy_all
City.destroy_all

city_1 = City.create(city_name: "Avignon")
city_2 = City.create(city_name: "Montpellier") 

dogsitter_1 = Dogsitter.create(name: "Jean", city: city_1)
dogsitter_2 = Dogsitter.create(name: "Luc", city: city_2)
dogsitter_3 = Dogsitter.create(name: "Fred", city: city_1)


dog_1 = Dog.create(name: "Joe", race: "Teckel", city: city_1)
dog_2 = Dog.create(name: "Foudre", race: "Braque Allemand", city: city_1)
dog_3 = Dog.create(name: "Pilon", race: "Skye Terrier", city: city_2)
dog_4 = Dog.create(name: "Paul", race: "Corgi", city: city_2)


stroll_1 = Stroll.create(date: Time.now-1, dogsitter: dogsitter_1, dog: dog_1, city:city_1)
stroll_2 = Stroll.create(date: Time.now, dogsitter: dogsitter_1, dog: dog_2, city:city_1)
stroll_3 = Stroll.create(date: Time.now, dogsitter: dogsitter_2, dog: dog_3, city:city_2)
stroll_4 = Stroll.create(date: Time.now-3, dogsitter: dogsitter_2, dog: dog_4, city:city_2)
stroll_5 = Stroll.create(date: Time.now, dogsitter: dogsitter_3, dog: dog_2, city:city_1)
stroll_6 = Stroll.create(date: Time.now+1, dogsitter: dogsitter_3, dog: dog_4, city:city_1)


