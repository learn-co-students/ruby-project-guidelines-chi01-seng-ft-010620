class Temperament < ActiveRecord::Base
    has_many :personalities 
    has_many :breeds, through: :personalities

    validates :name, uniqueness: true

    def self.see_breeds(temperament)
        breeds = self.find_by(name: temperament).breeds
        breeds.map{|b| b.name}
    end

end 