require_relative '../config/environment'
require 'pry'
puts "Welcome to Chicago Music Concerts Ticket Interface, do you have an account with us?"
# user_input = gets.chomp

def new_user
    puts "Enter name: "
    user = User.new
    user.name = gets.chomp
    puts "Enter email: "
    user.email = gets.chomp
    user.save
  end

  new_user

# Event.all.each_with_index do |event, index|
#     puts "#{index + 1}. #{event.name}"
#     puts "WHEN: #{event.date} at #{event.time}"
#     puts "GENERAL ADMISSION: $#{event.ticket_price}"
#     puts "-------------------------------------------"
# end 

# User.name = user_input




puts "HELLO #{}"
