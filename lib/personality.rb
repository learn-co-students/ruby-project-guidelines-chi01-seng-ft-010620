class Personality < ActiveRecord::Base
    belongs_to :breed
    belongs_to :temperament

    validates :breed_id && :temperament_id, uniqueness: true
end 