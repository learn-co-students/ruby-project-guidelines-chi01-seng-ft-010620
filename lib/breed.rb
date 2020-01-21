class Breed < ActiveRecord:Base
    has_many :personalities
    has_many :attributes, through: :personalities
end 