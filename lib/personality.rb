class Personality < ActiveRecord::Base
    belongs_to :breed
    belongs_to :attribute
end 