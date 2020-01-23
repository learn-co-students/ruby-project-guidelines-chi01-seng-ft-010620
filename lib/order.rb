class Order < ActiveRecord::Base
    belongs_to :event
    belongs_to :user

    def delete_order
        order = Order.find_by("user_id:")
        order.delete
    end

    def calculate_total
    end

    def remove_tickets_from_order
        puts "Enter amount of tickets to be removed from your oder. If more tickets are selected than in the order, your order will be deleted."
        
        user_input = gets.chomp
        # binding.pry
        input = user_input.to_i.clamp(1,10)
        
        if self.quantity >= input
            self.quantity -= input
            self.save
        else
            self.delete
        end
        self.save
      end

    def add_tickets_to_order
    end

    def place_an_order
        puts "Place your order."
        Order.create(user_id:User.id, event_id:Event.id)
        puts "How many tickets would you like to purchase? Select a number between 1 and 10."
        user_input = gets.chomp
        input = user_input.to_i.clamp(1,10)
        Order.quantity = input
        
    end

end