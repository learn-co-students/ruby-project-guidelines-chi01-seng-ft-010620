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
    end

    def create_new_user
        puts "Enter name: "
            user = User.create
            user.name = gets.chomp
            puts "Enter email: "
            user.email = gets.chomp
    end

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

    def display_my_orders
        self.orders
    end
end