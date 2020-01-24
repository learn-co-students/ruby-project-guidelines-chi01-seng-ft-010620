class Event < ActiveRecord::Base
    has_many :orders
    has_many :users, through: :orders



    def self.find_event_by_number 
        puts "Choose an event by entering its listed number."
        user_input = gets.chomp
        input = user_input.to_i
        $this_event = Event.find_by(id: input)
        puts "You have chosen #{$this_event.name}"
        $this_event

    end 


end