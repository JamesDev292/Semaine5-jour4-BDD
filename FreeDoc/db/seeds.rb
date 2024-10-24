# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
# db/seeds.rb

# Supprime toutes les données existantes pour éviter les doublons
Doctor.destroy_all
Patient.destroy_all
City.destroy_all
Specialty.destroy_all

# Création de 5 villes
cities = []
5.times do
  cities << City.create!(
    name: Faker::Address.city
  )
end

# Création de 10 docteurs et attribution de villes aléatoires
doctors = []
10.times do
  doctors << Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Address.zip_code,
    city: cities.sample  # Associe chaque docteur à une ville aléatoire
  )
end

# Création de 15 patients et attribution de villes aléatoires
patients = []
15.times do
  patients << Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: cities.sample  # Associe chaque patient à une ville aléatoire
  )
end

# Création de 5 spécialités
specialties = []
specialty_names = ["Cardiologie", "Neurologie", "Dermatologie", "Pédiatrie", "Ophtalmologie"]
specialty_names.each do |specialty_name|
  specialties << Specialty.create!(name: specialty_name)
end

# Associe chaque docteur à 1 à 3 spécialités aléatoires
doctors.each do |doctor|
  doctor.specialties << specialties.sample(rand(1..3))  # Associe entre 1 et 3 spécialités aléatoires à chaque docteur
end

puts "Seed terminée : 10 docteurs, 15 patients, 5 villes et 5 spécialités créés."













