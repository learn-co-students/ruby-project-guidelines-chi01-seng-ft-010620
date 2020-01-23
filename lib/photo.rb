require 'pry'

class Photo < ActiveRecord::Base
    belongs_to :user
    belongs_to :concert
    
    def self.photos_by_concert_name(name)
        self.all.select{|photo| photo.concert.displayName == name}
    end

    def self.photos_by_date(date_as_string)
        validated = date_as_string.to_date
        self.all.select{|photo| photo.created_at.to_date == validated}
    end

    def self.random_photo
        self.all.sample.file
    end

    def display
        pic_path = "/Users/samzandi/Desktop/flatiron/projects/mod1/ruby-project-guidelines-chi01-seng-ft-010620/bin/pictures"
        file_to_open = pic_path + "/" + self.file
        system %{open "#{file_to_open}"}
    end

end
