require "pry"

class Breed < ActiveRecord::Base
    has_many :personalities
    has_many :temperaments, through: :personalities

    validates :name, uniqueness: true

    def self.see_temperaments(breed_name)
        me = Breed.all.find_by(name: breed_name) 
        me.temperaments.map { |temperaments| temperaments.name}
    end 

    def self.find_breeds_based_on_size(weight)
        self.all.select do |breed| 
            breed.weight.between?(weight-10,weight+10)
        end 
    end 

    def self.see_breeds_based_on_size(weight)
        find_breeds_based_on_size(weight).map do |breed|
            breed.name
        end 
    end
    
    def self.see_temperaments_based_on_weight(weight)
        breed_temperament_hash = {}
        find_breeds_based_on_size(weight).map do |breed|
            x = breed.temperaments.map { |y| y.name}
            breed_temperament_hash[breed.name] = x
        end
        breed_temperament_hash
    end 

end 