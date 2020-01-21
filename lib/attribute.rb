class Attribute < ActiveRecord::Base
    has_many :personalities
    has_many :breeds, through: :personalities
end 