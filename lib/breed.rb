class Breed < ActiveRecord::Base
    has_many :personalities
    has_many :temperaments, through: :personalities

end 