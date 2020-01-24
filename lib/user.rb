require 'pry'

class User < ActiveRecord::Base
    has_many :orders
    has_many :events, through: :orders

    def self.find_user_by_name
        puts "If you are an existing user, enter your name."
        user_input = gets.chomp
        input = user_input.to_s.capitalize
        user = User.find_by(name: input)
        puts "Hello, #{user.name}, your email on file with us is #{user.email}."
        user
    end

    def self.find_user_name(name)
        self.find_by(name: name)
    end 

    def self.create_new_user
        puts "Enter name: "
            $this_user = User.create
            user_input = gets.chomp 
            input = user_input.to_s.capitalize 
            $this_user.name = input 
            $this_user
            
            puts "Enter email: "
            $this_user.email = gets.chomp
            $this_user.save
            $this_user
    end

    # def self.welcome_existing_user
    #     puts "Welcome #{$this_user.name}! What would you like to do next? Choose from the following options."
    #     puts "1. View my orders"
    #     puts "2. View a list of concerts and place an order"
    #     puts "3. Update an existing order"
    #     puts "4. Delete an existing order"
    #     puts "Enter the number for your choice"
    #     puts "Options are 1, 2, 3, or 4"
    #     user_choice
    #     binding.pry
    # end

    # def self.display_my_orders
    #    puts @this_user.orders
    #     binding.pry
    # end

    # def select_an_event
    #     puts "Please select an event!"

    # end

    def add_payment_method
        puts "Enter four digit credit card number: "
        payment = gets.chomp
        card_num = payment.to_i
        if card_num > 9999
            puts "Your card has been declined. Please enter a four digit number."
            add_payment_method
        else
        self.payment_info = card_num
        self.save
        end
    end
end