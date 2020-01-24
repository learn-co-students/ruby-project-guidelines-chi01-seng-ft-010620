require_relative '../config/environment'
require 'pry'

def clear_screen
  puts "\e[H\e[2J"
end

clear_screen

puts "Welcome to Chicago Music Concerts Ticket Interface, do you have an account with us?"


# def remove_tickets_from_order
#   puts "Enter amount of tickets to be removed from your oder. If more tickets are selected than in the order, your order will be deleted."
  
#   user_input = gets.chomp
#   binding.pry
#   input = user_input.to_i.clamp(1,10)
  
#   if self.quantity <= input
#       self.quantity -= input
#       self.update(quantity: input)
#   else
#       self.quantity
#   end
#   self.save
# end


puts "Do you have an existing account?"
puts "Enter 1 for yes, or 2 for no."
  input = gets.chomp
  if  input == "1"   
    $this_user = User.find_user_by_name
    # if $this_user == nil
    # $this_user
    # puts "Your account has not been found. Try again or create a new account."
    # end
  else
    $this_user = User.create_new_user 
  end

# clear_screen

User.welcome_existing_user

# clear_screen

def user_choice
user_input = gets.chomp
  if user_input == "1"
    $this_user.events.map do |event|
      puts event.name
    end
  elsif user_input == "2"
    Event.all.each_with_index do |event, index|
      puts "#{index + 1}. #{event.name}"
      puts "WHEN: #{event.date} at #{event.time}"
      puts "GENERAL ADMISSION: $#{event.ticket_price}"
      puts "-------------------------------------------"
    end
    $this_event = Event.find_event_by_number 
    Order.place_an_order
    Order.calculate_total
    Order.complete_purchase
    
  elsif user_input == "3"
    def add_tickets_to_order
      puts "Enter amount of tickets to be added to your order. You may add up to 10 tickets."
      user_input = gets.chomp
      # binding.pry
      input = user_input.to_i.clamp(1,10)
          $this_order.quantity += input
          $this_order.save
          puts "You now have #{$this_order.quantity} tickets in your cart."
    end
    $this_order.add_tickets_to_order
    #update
  else user_input == "4"
    Order.delete_order
  end
end

user_choice

clear_screen

# User.name = user_input




