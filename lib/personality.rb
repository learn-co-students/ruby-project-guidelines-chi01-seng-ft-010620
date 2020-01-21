class Personality < ActiveRecord::Base
    belongs_to :breed
    belongs_to :temperament
end 