class Helpers
  def options
    puts 'Enter a number to select an option:'
    puts '1 - List books'
    puts '2 - List people'
    puts '3 - New person'
    puts '4 - New book'
    puts '5 - New rental'
    puts '6 - List a person\'s rentals.'
    puts '7 - Exit'
  end

  def action(app, response)
    case response
    when '1' then app.list_books
    when '2' then app.list_people
    when '3' then app.new_person
    when '4' then app.new_book
    when '5' then app.new_rental
    when '6' then app.list_rentals_by_id
    else puts 'Invalid Option'
    end
  end

  def selection(app, response)
    while response != '7'
      options
      response = gets.chomp
      if response == '7'
        puts 'Thanks for using the App!'
        return
      end
      action(app, response)
      puts "\n"
    end
  end
end
