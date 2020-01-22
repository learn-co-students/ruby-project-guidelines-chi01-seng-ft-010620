class Personality < ActiveRecord::Base
    belongs_to :breed
    belongs_to :temperament

    validates :id, uniqueness: 
    
    def self.new_personality(breed_name, temperament_name)
        breed = Breed.find_by(name: breed_name)
        temperament = Temperament.find_by(name: temperament_name)
        self.create(breed_id: breed.id, temperament_id: temperament.id)
    end
end 