Breed.destroy_all
Temperament.destroy_all
Personality.destroy_all

require_relative '../config/environment'
require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

url = "https://api.thedogapi.com/v1/breeds"

uri = URI.parse(url)

response = Net::HTTP.get_response(uri)

<<<<<<< HEAD
response_array = JSON.parse(response.body)

response_array.map do |breed| 
    new_dog = Breed.create(name: breed["name"], weight: breed["weight"]["imperial"], lifespan: breed["life_span"])
end 

temperaments = response_array.map { |a| a["temperament"] }
temperament_string = temperaments.join(", ")
temperament_array = temperament_string.split(", ").uniq
temperament_array.each do |temperament|
    Temperament.create(name: temperament)
end 

Personality.create(breed_id: Breed.all[8].id, temperament_id: Temperament.all[7].id)
Personality.create(breed_id: Breed.all[3].id, temperament_id: Temperament.all[7].id)
Personality.create(breed_id: Breed.all[97].id, temperament_id: Temperament.all[6].id)
Personality.create(breed_id: Breed.all[97].id, temperament_id: Temperament.all[12].id)
Personality.create(breed_id: Breed.all[65].id, temperament_id: Temperament.all[12].id)
Personality.create(breed_id: Breed.all[97].id, temperament_id: Temperament.all[9].id)
Personality.create(breed_id: Breed.all[31].id, temperament_id: Temperament.all[58].id)
Personality.create(breed_id: Breed.all[24].id, temperament_id: Temperament.all[5].id)
Personality.create(breed_id: Breed.all[8].id, temperament_id: Temperament.all[100].id)
Personality.create(breed_id: Breed.all[1].id, temperament_id: Temperament.all[67].id)
   
        


