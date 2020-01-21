class Breed < ActiveRecord::Base
    has_many :personalities
    has_many :temperaments, through: :personalities

    validates :name, uniqueness: true

    def self.see_temperaments
        self.temperaments.name  
        # my_personalities = Personality.all.where(breed_id: self.id)
        # my_temperaments = my_personalities.map do |my_personalities|
        #     my_personalities.temperament
        # end 
        # my_temperaments.map { |my_t| my_t.name}
    end 

end 