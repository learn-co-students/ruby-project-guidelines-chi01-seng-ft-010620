require_relative '../config/environment'
Breed.destroy_all
Personality.destroy_all
Temperament.destroy_all

lab = Breed.create(name: "lab")
huskie = Breed.create(name: "huskie")

friendly = Temperament.create(name: "friendly")

puts "HELLO WORLD"

require 'net/http'

url = 

uri = URI(url)

response = Net:HEETP.get(uri)

response_hash = JSON.parse(response)

breed_info = response_hash[thing]

breed_info.each do |breed|
    Breed.create(name: )