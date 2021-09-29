require_relative 'functions'

puts 'Welcome to School Library App!'

one = '1 - List all books'
two = '2 - List all people'
three = '3 - Create a person'
four = '4 - Create a book'
five = '5 - Create rental'
six = '6 - List all rentals for a given person id'
seven = '7 - Exit'
puts '============================================'
puts 'Please choose an option by entering a number: '
puts '============================================'
puts "#{one}\n#{two}\n#{three}\n#{four}\n#{five}\n#{six}\n#{seven}\n "
option = Integer(gets)
options = [1, 2, 3, 4, 5, 6, 7]
user_select = options.include?(option)
list_books(option, user_select)
puts 'Invalid option. Try again later' unless user_select
