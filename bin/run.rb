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

new = Personality.new_personality("Irish Wolfhound", "Clownish")
p Temperament.see_breeds("Clownish")