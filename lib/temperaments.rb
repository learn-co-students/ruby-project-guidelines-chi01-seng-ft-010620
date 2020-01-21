class Temperament < ActiveRecord::Base
    has_many :personalities 
    has_many :breeds, through: :personalities

    validates :name, uniqueness: true

end 