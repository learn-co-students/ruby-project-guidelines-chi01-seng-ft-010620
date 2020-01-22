# Breed.destroy_all
# Personality.destroy_all
# Temperament.destroy_all


require_relative '../config/environment'
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
# Temperament.destroy_all

url = "https://api.thedogapi.com/v1/breeds"

uri = URI.parse(url)

response = Net::HTTP.get_response(uri)

response_hash = JSON.parse(response.body)
# binding.pry
new_dog = response_hash.map do |breed| 
    Breed.create(name: breed["name"], weight: breed["weight"]["imperial"], lifespan: breed["life_span"])
end

# Personality.new(new_dog, )
## TO GET A LIST OF ALL 125 UNIQ TEMPERAMENT LISTINGS
temperament_arrays = response_hash.map {|breed| breed["temperament"]}

temperament_string = temperament_arrays.join(", ")

temperament_list = temperament_string.split(", ")

temperament_list.map do |i|
    Temperament.create(name: i)
end
# binding.pry

## ATTACHING ONE BREED AND ONE TEMPERAMENT TO A PERSONALITY 
## EACH TIME THERE IS A MATCH
x = response_hash.map { |breed| breed["temperament"]}


# binding.pry
    # Personality.create(breed_id: Breed.id, temperament_id: Temperament.id)
Personality.destroy_all


p1 = Personality.create(breed_id: 35, temperament_id: 1140)
p2 = Personality.create(breed_id: 5, temperament_id: 1450)
p3 = Personality.create(breed_id: 58, temperament_id: 1234)
p4 = Personality.create(breed_id: 17, temperament_id: 1450)
p5 = Personality.create(breed_id: 35, temperament_id: 2000)
p6 = Personality.create(breed_id: 50, temperament_id: 1157)
p7 = Personality.create(breed_id: 50, temperament_id: 1168)
p8 = Personality.create(breed_id: 10, temperament_id: 1157)
# binding.pry