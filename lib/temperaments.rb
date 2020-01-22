class Temperament < ActiveRecord::Base
    has_many :personalities 
    has_many :breeds, through: :personalities

    validates :name, uniqueness: true

    def self.see_breeds(temperament)
        breeds = self.find_by(name: temperament).breeds
        # breeds.map{|b| b.name}
    end

    def self.see_breed_names(temperament)
        breeds = self.find_by(name: temperament).breeds
        breeds.map{|b| b.name}
    end

    def self.see_breeds_with_certain_weight_and_temperament(weight, temperament)
        breed_list = self.see_breeds(temperament)
        weighted_breeds = breed_list.select{ |breed| breed.weight.between?(weight-10, weight+10)}
        weighted_breeds.map{|d| d.name}
 
     end

end 