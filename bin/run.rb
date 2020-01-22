require_relative '../config/environment'
# # Breed.destroy_all
# # Personality.destroy_all
# # Temperament.destroy_all

# lab = Breed.create(name: "lab")
# huskie = Breed.create(name: "huskie")

# friendly = Temperament.create(name: "friendly")

# puts "HELLO WORLD"

# require 'net/http'

# url = "https://api.thedogapi.com/v1/breeds"

# uri = URI(url)

# response = Net:HEETP.get(uri)

# response_hash = JSON.parse(response.body)

# breed_info = response_hash[thing]

# breed_info.each do |breed|
#     Breed.create(name: )

# p Temperament.see_breeds("Loyal")
# Personality.destroy_all
# new = Personality.new_personality("Akita", "Alert")
# puts Temperament.see_breed_names("Excitable")

puts Temperament.see_breeds_with_certain_weight_and_temperament(30, "Loyal")