require_relative '../config/environment'
require 'pry'

def clear_screen
  puts "\e[H\e[2J"
end

clear_screen

puts "Welcome to Chicago Concert Tickets Interface, do you have an account with us?"


# def remove_tickets_from_order
#   puts "Enter amount of tickets to be removed from your oder. If more tickets are selected than in the order, your order will be deleted."
  
#   user_input = gets.chomp
#   
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
  if input == "1"   
    $this_user = User.find_user_by_name
    # if $this_user == nil
    # $this_user
    # puts "Your account has not been found. Try again or create a new account."
    # end
  else
    $this_user = User.create_new_user 
end

# clear_screen

# User.welcome_existing_user

def welcome_existing_user
  puts "Welcome #{$this_user.name}! What would you like to do next? Choose from the following options."
  puts "1. View my orders"
  puts "2. View a list of concerts and place an order"
  puts "3. Update an existing order"
  puts "4. Delete an existing order"
  puts "Enter the number for your choice"
  puts "Options are 1, 2, 3, or 4"
  # user_choice
  # 
end

welcome_existing_user

# clear_screen

def user_choice
  user_input = gets.chomp
  
  if user_input == "1"
    puts "Here are your current orders:"
    if $this_user.events.count >= 1
       $this_user.events.map do |event|
      puts "-------------------------------------------"
      puts "-------------------------------------------"
      puts event.name
      puts "-------------------------------------------"
      puts "-------------------------------------------"
      
      puts "Redirecting to home screen."
      puts "-------------------------------------------"
      puts "-------------------------------------------"
      welcome_existing_user
      user_choice
    end
    else
      puts "You have no existing orders."
      puts "-------------------------------------------"
      puts "-------------------------------------------"
      puts "Redirecting to home screen."
      puts "-------------------------------------------"
      puts "-------------------------------------------"
      welcome_existing_user
      user_choice

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
    puts "Redirecting to home screen."
    puts "-------------------------------------------"
    puts "-------------------------------------------"
    welcome_existing_user
    user_choice
    
  elsif user_input == "3"
    def add_tickets_to_order
      puts "Please type in the name of the order you would like to add tickets to."
      this_user = $this_user
      $this_user.events.map do |event|
        puts event.name
      end
        order_selection = gets.chomp
        event_to_update = Event.find_by(name: order_selection)
        order_to_update = Order.find_by(user_id: this_user.id, event_id: event_to_update.id)
        
        
        puts "Enter amount of tickets to be added to your order. You may add up to 10 tickets."
        user_input = gets.chomp
       
      # puts "Enter amount of tickets to be added to your order. You may add up to 10 tickets."
      # user_input = gets.chomp
     
        input = user_input.to_i.clamp(1,10)
      # if $this_order.quantity < 10
    
        order_to_update.quantity += input
        # if $this_order.quantity > 10
        #   puts "You have attempted to add too many tickets to your order. Your order has been updated to ten tickets."
        # end
        order_to_update.quantity.clamp(1,10)
        order_to_update.save
        puts "You now have #{order_to_update.quantity} tickets in your cart."
        $total = order_to_update.quantity * event_to_update.ticket_price
        puts "Your updated total is $#{$total}."
        puts "Redirecting to home screen."
        puts "-------------------------------------------"
        puts "-------------------------------------------"
        welcome_existing_user
        user_choice
    end
    Order.add_tickets_to_order
    #update
  else user_input == "4"
    Order.delete_order
    puts "Redirecting to home screen."
    puts "-------------------------------------------"
    puts "-------------------------------------------"
    welcome_existing_user
    user_choice
  end
end

# welcome_existing_user
user_choice